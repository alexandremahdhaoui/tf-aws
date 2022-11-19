package ast

import (
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/token"
)

func ToTerraformDefinition(tkns []token.Token, kind, moduleName, providerVersion string) apis.TerraformModuleDefinition {
	return apis.TerraformModuleDefinition{
		ApiVersion: apis.ApiVersion(),
		Kind:       toKind(kind),
		Metadata: apis.Metadata{
			Name: moduleName,
		},
		Spec: apis.Spec{
			Args:  args(tkns),
			Attrs: attrs(tkns),
			Terraform: apis.TerraformConfig{
				Provider: apis.TerraformProvider{
					Name:    "aws",
					Source:  "hashicorp/aws",
					Version: providerVersion,
					DefaultTags: apis.DefaultTags{
						Enabled: true,
					},
				},
			},
		},
	}
}

func toKind(kind string) string {
	if kind == "resource" {
		return "TerraformModuleDefinition"
	}
	if kind == "datasource" {
		return "TerraformDatasource"
	}
	panic("kind should be `resource` or `datasource`")
}

func args(tkns []token.Token) map[string]apis.ArgumentOrAttribute {
	m := requiredArgs(tkns)
	for k, v := range optionalArgs(tkns) {
		m[k] = v
	}
	return m
}

func requiredArgs(tkns []token.Token) map[string]apis.ArgumentOrAttribute {
	m := make(map[string]apis.ArgumentOrAttribute)
	var stack []token.Kind
	var queue []token.Token
	var tkn token.Token
	for i, t := range tkns {
		switch kind := t.Kind(); kind {
		case ArgumentReference:
			stack = make([]token.Kind, 0)
			stack = append(stack, kind)
		case RequiredArgs, Li:
			stack = append(stack, kind)
		}
		if evalKind(stack, ArgumentReference) && evalKind(stack, RequiredArgs) && evalKind(stack, Li) {
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
						Optional:    true,
					}
				}

				stack = make([]token.Kind, 0)
				currentArg = make([]byte, 0)
				currentDescription = make([]byte, 0)
			case OptionalArgs:
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

func optionalArgs(tkns []token.Token) map[string]apis.ArgumentOrAttribute {
	m := make(map[string]apis.ArgumentOrAttribute)
	var stack []token.Kind
	var queue []token.Token
	var tkn token.Token
	for i, t := range tkns {
		switch kind := t.Kind(); kind {
		case ArgumentReference:
			stack = make([]token.Kind, 0)
			stack = append(stack, kind)
		case OptionalArgs, Li:
			stack = append(stack, kind)
		}
		if evalKind(stack, ArgumentReference) && evalKind(stack, OptionalArgs) && evalKind(stack, Li) {
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
						Optional:    true,
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
