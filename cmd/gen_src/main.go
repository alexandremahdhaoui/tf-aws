package main

import (
	"bytes"
	"fmt"
	"github.com/yuin/goldmark"
	"gitlab.com/alexandre.mahdhaoui/go-lib-visitor-html/pkg/visitor"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/ast"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/token"
	"golang.org/x/net/html"
	"io"
	"os"
	"strings"
)

func main() {
	doc := getHtmlDoc()
	node := visitor.NewNode(doc)
	tt := ast.FromHtmlNode(&node)
	tkns := ast.Flatten(tt)
	resource := ast.ToTerraformResource(tkns)
	resource.Debug(0)
}

func getHtmlDoc() *html.Node {
	file, err := os.Open("cmd/gen_src/raw_markdown.md")
	if err != nil {
		panic(err)
	}

	b, err := io.ReadAll(file)
	if err != nil {
		panic(err)
	}

	var buf bytes.Buffer
	if err := goldmark.Convert(b, &buf); err != nil {
		panic(err)
	}

	b, err = io.ReadAll(&buf)
	if err != nil {
		panic(err)
	}

	doc, err := html.Parse(bytes.NewReader(b))
	if err != nil {
		panic(err)
	}
	return doc
}

func printAST(tree token.Tree, indent int) {
	if tkn := tree.Token(); tkn != nil {
		fmt.Printf("%s\t%v:\t%s\n", strings.Repeat("|-", indent), tkn.Kind(), string(tkn.Data()))
	}
	if stream := tree.TokenStream(); stream != nil {
		for _, tt := range stream.AsSlice() {
			printAST(tt, indent+1)
		}
	}
}
