package token

type (
	queue struct {
		tokenTrees []Tree
	}
	Queue interface {
		// AsSlice returns the token.Queue as a slice of token.Tree
		AsSlice() []Tree
		// AsStream returns a representation of this token.Stream as token.Queue.
		AsStream() Stream
		// Dequeue is used to dequeue a token.Tree from the token.Stream.
		// Useful when looping over the token.Stream until it is empty.
		Dequeue() Tree
		// Enqueue appends a token.Tree to the tokenTrees.
		Enqueue(Tree)
		// Next returns a pointer to the next element in the queue
		Next() Tree
	}
)

func (q *queue) Next() Tree {
	if len(q.tokenTrees) > 0 {
		return q.tokenTrees[0]
	}
	return nil
}

func (q *queue) AsSlice() []Tree {
	return q.tokenTrees
}

func (q *queue) AsStream() Stream {
	return NewTokenStreamBuilder().Set(q.AsSlice()).Build()
}

func (q *queue) Dequeue() Tree {
	if length := len(q.AsSlice()); length > 1 {
		tt := q.tokenTrees[0]
		q.tokenTrees = q.tokenTrees[1:]
		return tt
	} else if length == 1 {
		tt := q.tokenTrees[0]
		q.tokenTrees = make([]Tree, 0)
		return tt
	}
	return nil
}
func (q *queue) Enqueue(tt Tree) {
	q.tokenTrees = append(q.AsSlice(), tt)
}

type (
	queueBuilder struct {
		q queue
	}

	QueueBuilder interface {
		Build() Queue
		Extend(Queue) QueueBuilder
		Push(Tree) QueueBuilder
		Set([]Tree) QueueBuilder
	}
)

func (b *queueBuilder) Build() Queue {
	return &b.q
}

func (b *queueBuilder) Extend(q Queue) QueueBuilder {
	b.Set(append(b.q.AsSlice(), q.AsSlice()...))
	return b
}

func (b *queueBuilder) Push(tt Tree) QueueBuilder {
	b.Set(append(b.q.AsSlice(), tt))
	return b
}

func (b *queueBuilder) Set(tts []Tree) QueueBuilder {
	b.q.tokenTrees = tts
	return b
}

func NewTokenQueueBuilder() QueueBuilder {
	return &queueBuilder{q: queue{tokenTrees: make([]Tree, 0)}}
}
