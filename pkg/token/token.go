package token

type Kind uint32

type (
	Token interface {
		Data() []byte
		Kind() Kind
	}

	token struct {
		data []byte
		kind Kind
	}
)

func New(data []byte, kind Kind) Token {
	return &token{data, kind}
}

func (t *token) Data() []byte { return t.data }
func (t *token) Kind() Kind   { return t.kind }
