package ast

import (
	"bytes"
	"gitlab.com/alexandre.mahdhaoui/go-lib-ds-graph/pkg/api"
	"gitlab.com/alexandre.mahdhaoui/go-lib-visitor-html/pkg/visitor"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/token"
)

// FromHtmlNode visits the graph of Html Nodes & returns a parsed token.Tree representing the Data.
func FromHtmlNode(node *visitor.Node) token.Tree {
	tt := dfs(node)
	return tt
}

type NodeSet map[api.Node]struct{}

func dfs(node api.Node) token.Tree {
	tt := internalDfs(node, NewTokenizer())
	return tt
}

func internalDfs(node api.Node, tokenizer token.Tokenizer) token.Tree {
	treeBuilder := token.NewTokenTreeBuilder()
	streamBuilder := token.NewTokenStreamBuilder()

	if n, ok := node.(*visitor.Node); ok {
		tkn := tokenizer.Tokenize([]byte(n.Data()))
		if tkn = cleanToken(tkn); tkn != nil {
			tt := token.NewTokenTreeBuilder().SetToken(tkn).Build()
			streamBuilder.Push(tt)
		}
	}

	for _, adj := range node.AdjacentNodes() {
		tt := internalDfs(adj, tokenizer)
		streamBuilder.Push(tt)
	}

	treeBuilder.SetTokenStream(streamBuilder.Build())
	return treeBuilder.Build()
}

func cleanToken(tkn token.Token) token.Token {
	switch tkn.Kind() {
	case H, Li, ArgumentReference, RequiredArgs, OptionalArgs, AttributesReference, token.Literal:
		return tkn
	case Resource:
		data := tkn.Data()
		data = bytes.Replace(data, []byte("Resource: "), []byte(""), 1)
		return token.New(data, tkn.Kind())
	case Description:
		data := tkn.Data()
		data = bytes.Replace(data, []byte(" - "), []byte(""), 1)
		return token.New(data, tkn.Kind())
	default:
		return nil
	}
}

func Flatten(tt token.Tree) []token.Token {
	var tkns []token.Token
	if tkn := tt.Token(); tkn != nil {
		tkns = append(tkns, tkn)
	}
	if stream := tt.TokenStream(); stream != nil {
		for _, sub := range stream.AsSlice() {
			tkns = append(tkns, Flatten(sub)...)
		}
	}
	return tkns
}
