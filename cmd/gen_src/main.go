package main

import (
	"bytes"
	"fmt"
	log "github.com/sirupsen/logrus"
	"github.com/yuin/goldmark"
	"gitlab.com/alexandre.mahdhaoui/go-lib-visitor-html/pkg/visitor"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/ast"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/logger"
	"golang.org/x/net/html"
	"gopkg.in/yaml.v3"
	"io"
	"os"
	"strings"
)

// TODO: Please add logging to this file & update usage of logger.Panic(err, ef)

const TerraformAwsProviderUrlTemplate = "https://raw.githubusercontent.com/hashicorp/terraform-provider-aws/%s/website/docs/%s/%s"
const SourcePathTemplate = "./cmd/gen_src/%s.txt"
const ModuleOutputPathTemplate = "./gen/src/%s/%s.yaml"

func main() {
	log.SetFormatter(&log.JSONFormatter{
		PrettyPrint: true,
	})
	log.SetLevel(log.DebugLevel)
	sf, ef := logger.Debug("run", "", "gen_src")
	defer sf()
	err := apis.SetTerraformVersionTag("1.3.4")
	logger.Panic(err, ef)
	err = apis.SetProviderVersionTag("v4.38.0")
	logger.Panic(err, ef)
	parseTerraformDefinition(apis.Resource)
	parseTerraformDefinition(apis.Datasource)
}

func parseTerraformDefinition(kind apis.Kind) {
	sf, _ := logger.Debug("parse", "kind", string(kind))
	defer sf()
	providerVersionTag := apis.ProviderVersionTag()
	for _, info := range urls(kind, providerVersionTag) {
		doc := parseMarkdownToHtml(info.url)
		node := visitor.NewNode(doc)
		tt := ast.FromHtmlNode(&node)
		tokens := ast.Flatten(tt)
		def := ast.ToTerraformDefinition(tokens, kind, info.name)
		saveDef(kind, &def)
	}
}

func saveDef(sourceKind apis.Kind, data *apis.TerraformModuleDefinition) {
	sf, ef := logger.Debug("save", "TerraformModuleDefinition", data.Metadata.Name)
	defer sf()
	buf, err := yaml.Marshal(data)
	logger.Panic(err, ef)
	path := fmt.Sprintf(ModuleOutputPathTemplate, apis.KindSlug(sourceKind), data.Metadata.Name)
	err = os.WriteFile(path, buf, 0644)
	logger.Panic(err, ef)
}

func parseMarkdownToHtml(url string) *html.Node {
	sf, ef := logger.Debug("parse", "markdown to html.Node for", url)
	defer sf()
	b, err := pkg.HttpGet(url)
	logger.Panic(err, ef)

	var buf bytes.Buffer
	err = goldmark.Convert(b, &buf)
	logger.Panic(err, ef)

	b, err = io.ReadAll(&buf)
	logger.Panic(err, ef)

	doc, err := html.Parse(bytes.NewReader(b))
	logger.Panic(err, ef)
	return doc
}

type moduleInfo struct {
	name, url string
}

func urls(sourceKind apis.Kind, providerVersionTag string) []moduleInfo {
	kind := apis.KindSlug(sourceKind)
	var infos []moduleInfo
	for _, line := range readFileAndSplitLine(fmt.Sprintf(SourcePathTemplate, kind)) {
		info := moduleInfo{
			name: strings.ReplaceAll(fmt.Sprintf("aws_%s", line), ".html.markdown", ""),
			url:  fmt.Sprintf(TerraformAwsProviderUrlTemplate, providerVersionTag, kind[0:1], line),
		}
		infos = append(infos, info)
	}
	return infos
}

func readFileAndSplitLine(path string) []string {
	sf, ef := logger.Debug("read", "file", path)
	defer sf()
	file, err := os.Open(path)
	logger.Panic(err, ef)

	b, err := io.ReadAll(file)
	logger.Panic(err, ef)

	return strings.Split(string(b), "\n")
}
