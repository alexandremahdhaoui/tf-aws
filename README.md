[[_TOC_]]

# Disclaimer

This project is a personal fun project aiming to provide singleton terraform modules by parsing markdown documentation.
To effectively achieve the same goal we should directly use the internals of the terraform provider or at least parse
their content.

# Repository structure

| Path           | Description                                                                                                          |
|----------------|----------------------------------------------------------------------------------------------------------------------|
| `cmd/`         | Includes command line tools used in this project.                                                                    |
| `cmd/gen_src`  | CLI generating `TerraformModuleDefinition`s from GitHub repository of `terraform-provider-aws`.                      |
| `cmd/gen_mod`  | CLI generating Terraform modules from `TerraformModuleDefiniton`s located in `gen/src/` & `customize/`.              |
| `customize/`   | Includes configuration files to customize behaviors of generated modules.                                            |
| `gen/mod/`     | Generated modules.                                                                                                   |
| `gen/src/`     | `TerraformModule` configuration files.                                                                               |
| `pkg/`         | Includes go packages used by the cli tools defined in `cmd`.                                                         |
| `pkg/apis/`    | Contains `TerraformModuleDefinition` structs.                                                                        | 
| `pkg/ast/`     | Contains `NewTokenizer`, `FromHtmlDoc` & `ToTerraformDefinition` functions.                                          | 
| `pkg/logger`   | Logging framework used all around the repository.                                                                    |
| `pkg/cmdutils` | Utility functions used by `cmd/`.                                                                                    |
| `pkg/tokens/`  | Contains `Token`, `TokenStream` & `TokenTree` interfaces used to parse the markdowns into `TerraformModule` structs. |


# TODO

- [x] please **snake_case** strings in file names to avoid unconventional naming schemas.  
- [ ] add general usage of the documentation

## cmd/gen_mod/
- [ ] Once it is done, outsource this module into [template-mod-tf](https://gitlab.com/alexandre.mahdhaoui/template-mod-tf).
  - [ ] Rename the repository of the outsourced module to: `go-lib-gen-tf` (better respects the naming convention).

## Other
- [ ] Once todo items for `cmd/gen_mod/` are done, please add tests to the repository and enhance automation when generating modules.
- [ ] `cmd/gen_src`: Add ability to specify provider version tag from CLI.
- [ ] `cmd/gen_src`: Add ability to fetch all the modules name,urls from the GitHub API instead of hard sourcing these in 
`cmd/gen_src/{datasource,resource}.txt`.

Future:
- Don't store `gen/` in this repo but rather in `s3` ?

# Considerations

These modules are simple wrappers around the AWS provider to comply to the 
[tag specification](https://gitlab.com/alexandre.mahdhaoui/spec-tag).

The use of `for_each` in the resources was considered but dropped out as creation of different Accounts,OUs should 
not be respectively coupled between accounts,OUs.
-> We do not want to treat the accounts,OUs creation process as a monolith, but rather scale it horizontally. 
