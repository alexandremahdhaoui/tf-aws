# gen_src

## Goal

Reads "markdown configuration" from the [AWS terraform provider](https://github.com/hashicorp/terraform-provider-aws/tree/main/website/docs)
and parses it using [goldmark](https://github.com/yuin/goldmark).

Returns a valid manifest compliant to [template-mod-tf](https://gitlab.com/alexandre.mahdhaoui/template-mod-tf).

Example raw endpoint to query:
- https://raw.githubusercontent.com/hashicorp/terraform-provider-aws/v4.38.0/website/docs/r/accessanalyzer_analyzer.html.markdown


## Run locally
From Root DIR:
```shell
go run ./cmd/gen_src/main.go
```