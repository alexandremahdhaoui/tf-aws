package ast

import (
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/token"
	"regexp"
)

const (
	Ul token.Kind = iota
	Li
	H
	P
	A
	Pre
	Code

	ModuleName
	ArgumentReference
	RequiredArgs
	OptionalArgs
	AttributesReference
	Description

	LineBreak
	Literal = token.Literal
)

func NewTokenizer() token.Tokenizer {
	return token.NewTokenizer(
		map[token.Kind]regexp.Regexp{
			Ul:                  *regexp.MustCompile(`^ul$`),
			Li:                  *regexp.MustCompile(`^li$`),
			H:                   *regexp.MustCompile(`^h\d$`),
			P:                   *regexp.MustCompile(`^p$`),
			A:                   *regexp.MustCompile(`^a$`),
			Pre:                 *regexp.MustCompile(`^pre$`),
			Code:                *regexp.MustCompile(`^code$`),
			ModuleName:          *regexp.MustCompile(`^Resource\:.*|^Data\ Source\:.*|^Data\ source\:.*`),
			ArgumentReference:   *regexp.MustCompile(`^Argument\ Reference`),
			RequiredArgs:        *regexp.MustCompile(`^The\ following\ arguments\ are\ required\:|^The\ following\ arguments\ are\ supported`),
			OptionalArgs:        *regexp.MustCompile(`^The\ following\ arguments\ are\ optional\:`),
			AttributesReference: *regexp.MustCompile(`^Attributes\ Reference`),
			Description:         *regexp.MustCompile(`^\ \-\ `),
			LineBreak:           *regexp.MustCompile(`\n`),
		},
	)
}
