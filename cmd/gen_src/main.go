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
	providerVersionTag := "v4.40.0"
	parseTerraformDefinition("resource", providerVersionTag)
	parseTerraformDefinition("datasource", providerVersionTag)
}

func parseTerraformDefinition(kind, providerVersionTag string) {
	for _, moduleInfo := range urls(kind, providerVersionTag) {
		fmt.Printf("parsing %s...\n", moduleInfo.url)
		doc := parseMarkdownToHtml(moduleInfo.url)
		node := visitor.NewNode(doc)
		tt := ast.FromHtmlNode(&node)
		tkns := ast.Flatten(tt)
		def := ast.ToTerraformDefinition(tkns, kind, moduleInfo.name, providerVersionTag)
		saveDef(kind, &def)
	}
}

func saveDef(sourceKind string, data *apis.TerraformModuleDefinition) {
	buf, err := yaml.Marshal(data)
	panicE(err)
	err = os.WriteFile(fmt.Sprintf(ModuleOutputPathTemplate, sourceKind, data.Metadata.Name), buf, 0644)
	panicE(err)
}

func panicE(e error) {
	if e != nil {
		panic(e)
	}
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

func urls(sourceKind, providerVersionTag string) []moduleInfo {
	var infos []moduleInfo
	for _, line := range readFileAndSplitLine(fmt.Sprintf(SourcePathTemplate, sourceKind)) {
		info := moduleInfo{
			name: strings.ReplaceAll(line, ".html.markdown", ""),
			url:  fmt.Sprintf(TerraformAwsProviderUrlTemplate, providerVersionTag, sourceKind[0:1], line),
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
