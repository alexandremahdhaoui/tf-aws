package main

import (
	"fmt"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
)

const ExamplePath = "./gen/src/resource/aws_organizations_account.yaml"

// Generates terraform modules from the terraform resource definitions located in `gen/src/`
func main() {
	mod, err := apis.FromPath(ExamplePath)
	panicE(err)
	mod.Debug(0)
	hcl := mod.ToHCL()
	fmt.Printf("%s", string(hcl))
}

func panicE(e error) {
	if e != nil {
		panic(e)
	}
}
