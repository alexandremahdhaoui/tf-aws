package token

import "regexp"

const Literal Kind = 1173

type (
	tokenizer struct {
		m map[Kind]regexp.Regexp
	}
	Tokenizer interface {
		Tokenize([]byte) Token
	}
)

// Tokenize takes a []byte and returns a Token.
// Because raw parsed html data cannot be interpreted as a Context Free Grammar, we tokenize.
// This function uses regexp.MatchString for simplicity.
// Please note we do not have to create cursor and so on since we are tokenizing "pre-tokenized" data.
// Indeed, at this point the data is structured as an Html graph and visited using depth-first search.
func (t *tokenizer) Tokenize(b []byte) Token {
	for kind, regex := range t.m {
		if regex.Match(b) {
			return New(b, kind)
		}
	}
	return New(b, Literal)
}

func NewTokenizer(m map[Kind]regexp.Regexp) Tokenizer {
	return &tokenizer{m}
}
