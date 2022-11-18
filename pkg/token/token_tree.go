package token

type TTKind uint32

const (
	TTToken TTKind = iota
	TTTokenStream
)

type (
	Tree interface {
		Kind() TTKind
		// Token returns a Token if it exists else nil.
		Token() Token
		// TokenStream returns a TokenStream if it exist else nil.
		TokenStream() Stream
	}

	tokenTree struct {
		kind        TTKind
		token       Token
		tokenStream Stream
	}
)

// newTT instantiate a TokenTree
func newTT() tokenTree                    { return tokenTree{} }
func (tt *tokenTree) Kind() TTKind        { return tt.kind }
func (tt *tokenTree) Token() Token        { return tt.token }
func (tt *tokenTree) TokenStream() Stream { return tt.tokenStream }

type (
	TreeBuilder interface {
		Build() Tree
		SetToken(Token) TreeBuilder
		SetTokenStream(Stream) TreeBuilder
	}
	tokenTreeBuilder struct {
		tt tokenTree
	}
)

// NewTokenTreeBuilder instantiate a TokenTreeBuilder
func NewTokenTreeBuilder() TreeBuilder { return &tokenTreeBuilder{tt: newTT()} }

func (b *tokenTreeBuilder) Build() Tree { return &b.tt }
func (b *tokenTreeBuilder) SetToken(t Token) TreeBuilder {
	b.tt.token = t
	b.tt.kind = TTToken
	return b
}
func (b *tokenTreeBuilder) SetTokenStream(ts Stream) TreeBuilder {
	b.tt.tokenStream = ts
	b.tt.kind = TTTokenStream
	return b
}
