package token

type (
	// Stream is defined as a slice of TokenTree.
	stream struct {
		cursor     int
		tokenTrees []Tree
	}
	Stream interface {
		// AsQueue returns a representation of this token.Stream as token.Queue.
		AsQueue() Queue
		// AsSlice returns the tokenTrees as a slice of token.Tree
		AsSlice() []Tree
		// Cursor returns the current position of the cursor. Cursor is used when iterating using Next.
		Cursor() int
		// Next is used to iterate over all token.Tree inside the Stream.
		// Next uses a cursor to keep track of the iteration.
		Next() Tree
	}
)

func (s *stream) AsQueue() Queue {
	return NewTokenQueueBuilder().Set(s.AsSlice()).Build()
}

func (s *stream) AsSlice() []Tree { return s.tokenTrees }
func (s *stream) Cursor() int     { return s.cursor }

func (s *stream) Next() Tree {
	if s.cursor+1 >= len(s.tokenTrees) {
		return nil
	}
	tt := s.tokenTrees[s.cursor]
	s.cursor += 1
	return tt
}

type (
	StreamBuilder interface {
		Build() Stream
		Extend(Stream) StreamBuilder
		Push(Tree) StreamBuilder
		Set([]Tree) StreamBuilder
	}
	tokenStreamBuilder struct {
		stream stream
	}
)

func (b *tokenStreamBuilder) Build() Stream { return &b.stream }

func (b *tokenStreamBuilder) Extend(st Stream) StreamBuilder {
	b.Set(append(b.stream.AsSlice(), st.AsSlice()...))
	return b
}

// Push takes a token.Tree and append it to the token.Stream.
func (b *tokenStreamBuilder) Push(tt Tree) StreamBuilder {
	b.Set(append(b.stream.AsSlice(), tt))
	return b
}

func (b *tokenStreamBuilder) Set(tts []Tree) StreamBuilder {
	b.stream.tokenTrees = tts
	return b
}

// NewTokenStreamBuilder initialize a new StreamBuilder
func NewTokenStreamBuilder() StreamBuilder {
	return &tokenStreamBuilder{stream: stream{
		cursor:     0,
		tokenTrees: make([]Tree, 0),
	}}
}
