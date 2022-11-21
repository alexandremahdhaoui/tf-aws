package main

import (
	"bytes"
	"fmt"
	"github.com/yuin/goldmark"
	"gitlab.com/alexandre.mahdhaoui/go-lib-visitor-html/pkg/visitor"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/ast"
	"golang.org/x/net/html"
	"gopkg.in/yaml.v3"
	"io"
	"os"
	"strings"
)

const TerraformAwsProviderUrlTemplate = "https://raw.githubusercontent.com/hashicorp/terraform-provider-aws/%s/website/docs/%s/%s"
const SourcePathTemplate = "./cmd/gen_src/%s.txt"
const ModuleOutputPathTemplate = "./gen/src/%s/%s.yaml"

func main() {
	err := apis.SetTerraformVersionTag("1.3.4")
	panicE(err)
	err = apis.SetProviderVersionTag("v4.38.0")
	panicE(err)
	parseTerraformDefinition(apis.Resource)
	parseTerraformDefinition(apis.Datasource)
}

func parseTerraformDefinition(kind apis.Kind) {
	providerVersionTag := apis.ProviderVersionTag()
	for _, info := range urls(kind, providerVersionTag) {
		fmt.Printf("parsing %s...\n", info.url)
		doc := parseMarkdownToHtml(info.url)
		node := visitor.NewNode(doc)
		tt := ast.FromHtmlNode(&node)
		tkns := ast.Flatten(tt)
		def := ast.ToTerraformDefinition(tkns, kind, info.name)
		saveDef(kind, &def)
	}
}

func saveDef(sourceKind apis.Kind, data *apis.TerraformModuleDefinition) {
	buf, err := yaml.Marshal(data)
	panicE(err)
	err = os.WriteFile(fmt.Sprintf(ModuleOutputPathTemplate, apis.KindSlug(sourceKind), data.Metadata.Name), buf, 0644)
	panicE(err)
}

func parseMarkdownToHtml(url string) *html.Node {
	b, err := pkg.HttpGet(url)
	panicE(err)

	var buf bytes.Buffer
	err = goldmark.Convert(b, &buf)
	panicE(err)

	b, err = io.ReadAll(&buf)
	panicE(err)

	doc, err := html.Parse(bytes.NewReader(b))
	panicE(err)
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
	file, err := os.Open(path)
	panicE(err)

	b, err := io.ReadAll(file)
	panicE(err)

	return strings.Split(string(b), "\n")
}

func panicE(e error) {
	if e != nil {
		panic(e)
	}
}
