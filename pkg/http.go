package pkg

import (
	"io"
	"net/http"
)

// HttpGet runs a GET request to the specified URL & return the byte slice of the body
func HttpGet(url string) ([]byte, error) {
	resp, err := http.Get(url)
	if err != nil {
		return nil, err
	}
	b, err := io.ReadAll(resp.Body)
	if err = resp.Body.Close(); err != nil {
		return nil, err
	}
	return b, nil
}
