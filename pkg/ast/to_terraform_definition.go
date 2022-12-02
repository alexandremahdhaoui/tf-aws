package ast

import (
	"bytes"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/token"
)

// TODO: please add logging to all function of this file

func ToTerraformDefinition(tkns []token.Token, kind apis.Kind, moduleName string) apis.TerraformModuleDefinition {
	return apis.TerraformModuleDefinition{
		ApiVersion: apis.ApiVersion(),
		Kind:       kind,
		Metadata: &apis.Metadata{
			Name: moduleName,
		},
		Spec: &apis.Spec{
			Args:  args(tkns),
			Attrs: attrs(tkns),
			Terraform: &apis.TerraformConfig{
				Version: apis.CleanVersion(apis.TerraformVersionTag),
				Provider: &apis.TerraformProvider{
					Name:    "aws",
					Source:  "hashicorp/aws",
					Version: apis.CleanVersion(apis.ProviderVersionTag),
					DefaultTags: &apis.DefaultTags{
						Enabled: true,
					},
				},
			},
		},
	}
}

func args(tokens []token.Token) map[string]apis.ArgumentOrAttribute {
	m := requiredArgs(tokens)
	for k, v := range optionalArgs(tokens) {
		m[k] = v
	}
	return m
}

func requiredArgs(tokens []token.Token) map[string]apis.ArgumentOrAttribute {
	m := make(map[string]apis.ArgumentOrAttribute)
	var stack []token.Kind
	var queue []token.Token
	var tkn token.Token
	for i, t := range tokens {
		switch kind := t.Kind(); kind {
		case ArgumentReference:
			stack = make([]token.Kind, 0)
			stack = append(stack, kind)
		case RequiredArgs, Li:
			stack = append(stack, kind)
		}
		if evalKind(stack, ArgumentReference) && evalKind(stack, RequiredArgs) && evalKind(stack, Li) {
			queue = tokens[i+1:]
			break
		}
	}
	stack = make([]token.Kind, 0)
	currentArg := make([]byte, 0)
	currentDescription := make([]byte, 0)
	for len(queue) > 0 {
		if queue, tkn = dequeue(queue); tkn != nil {
			stack = append(stack, tkn.Kind())
			switch tkn.Kind() {
			case Literal:
				if len(stack) == 1 {
					currentArg = tkn.Data()
				} else {
					currentDescription = append(currentDescription, tkn.Data()...)
				}
			case Description:
				currentDescription = append(currentDescription, tkn.Data()...)
			case Li:
				if len(currentArg) != 0 {
					optional := false
					if bytes.Contains(currentDescription, []byte("(Optional)")) {
						optional = true
					}
					m[string(currentArg)] = apis.ArgumentOrAttribute{
						Description: string(currentDescription),
						Type:        "string",
						Optional:    optional,
					}
				}

				stack = make([]token.Kind, 0)
				currentArg = make([]byte, 0)
				currentDescription = make([]byte, 0)
			case OptionalArgs:
				if len(currentArg) != 0 {
					optional := false
					if bytes.Contains(currentDescription, []byte("(Optional)")) {
						optional = true
					}
					m[string(currentArg)] = apis.ArgumentOrAttribute{
						Description: string(currentDescription),
						Type:        "string",
						Optional:    optional,
					}
				}
				break
			}
		}
	}
	return m
}

func dequeue(queue []token.Token) ([]token.Token, token.Token) {
	if len(queue) < 1 {
		return nil, nil
	}
	if len(queue) > 1 {
		return queue[1:], queue[0]
	}
	return nil, queue[0]
}

func evalKind(stack []token.Kind, kind token.Kind) bool {
	for _, k := range stack {
		if kind == k {
			return true
		}
	}
	return false
}

func optionalArgs(tokens []token.Token) map[string]apis.ArgumentOrAttribute {
	m := make(map[string]apis.ArgumentOrAttribute)
	var stack []token.Kind
	var queue []token.Token
	var tkn token.Token
	for i, t := range tokens {
		switch kind := t.Kind(); kind {
		case ArgumentReference:
			stack = make([]token.Kind, 0)
			stack = append(stack, kind)
		case OptionalArgs, Li:
			stack = append(stack, kind)
		}
		if evalKind(stack, ArgumentReference) && evalKind(stack, OptionalArgs) && evalKind(stack, Li) {
			queue = tokens[i+1:]
			break
		}
	}
	stack = make([]token.Kind, 0)
	currentArg := make([]byte, 0)
	currentDescription := make([]byte, 0)
	for len(queue) > 0 {
		if queue, tkn = dequeue(queue); tkn != nil {
			stack = append(stack, tkn.Kind())
			switch tkn.Kind() {
			case Literal:
				if len(stack) == 1 {
					currentArg = tkn.Data()
				} else {
					currentDescription = append(currentDescription, tkn.Data()...)
				}
			case Description:
				currentDescription = append(currentDescription, tkn.Data()...)
			case Li:
				if len(currentArg) != 0 {
					optional := true
					if bytes.Contains(currentDescription, []byte("(Required)")) {
						optional = false
					}
					m[string(currentArg)] = apis.ArgumentOrAttribute{
						Description: string(currentDescription),
						Type:        "string",
						Optional:    optional,
					}
				}
				stack = make([]token.Kind, 0)
				currentArg = make([]byte, 0)
				currentDescription = make([]byte, 0)
			case H:
				if len(currentArg) != 0 {
					m[string(currentArg)] = apis.ArgumentOrAttribute{
						Description: string(currentDescription),
						Type:        "string",
						Optional:    true,
					}
				}
				break
			}
		}
	}
	return m
}

func attrs(tkns []token.Token) map[string]apis.ArgumentOrAttribute {
	m := make(map[string]apis.ArgumentOrAttribute)
	stack := make([]token.Kind, 0)
	var queue []token.Token
	var tkn token.Token
	for i, t := range tkns {
		switch kind := t.Kind(); kind {
		case AttributesReference:
			stack = make([]token.Kind, 0)
			stack = append(stack, kind)
		case Li:
			stack = append(stack, kind)
		}
		if evalKind(stack, AttributesReference) && evalKind(stack, Li) {
			queue = tkns[i+1:]
			break
		}
	}
	stack = make([]token.Kind, 0)
	currentArg := make([]byte, 0)
	currentDescription := make([]byte, 0)
	for len(queue) > 0 {
		if queue, tkn = dequeue(queue); tkn != nil {
			stack = append(stack, tkn.Kind())
			switch tkn.Kind() {
			case Literal:
				if len(stack) == 1 {
					currentArg = tkn.Data()
				} else {
					currentDescription = append(currentDescription, tkn.Data()...)
				}
			case Description:
				currentDescription = append(currentDescription, tkn.Data()...)
			case Li:
				if len(currentArg) != 0 {
					m[string(currentArg)] = apis.ArgumentOrAttribute{
						Description: string(currentDescription),
						Type:        "string",
					}
				}
				stack = make([]token.Kind, 0)
				currentArg = make([]byte, 0)
				currentDescription = make([]byte, 0)
			case H:
				if len(currentArg) != 0 {
					m[string(currentArg)] = apis.ArgumentOrAttribute{
						Description: string(currentDescription),
						Type:        "string",
					}
				}
				break
			}
		}
	}
	return m
}

// ====================================================== Helpers ======================================================
