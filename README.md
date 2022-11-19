[[_TOC_]]

# Repository structure

| Path        | Description                                                                                                          |
|-------------|----------------------------------------------------------------------------------------------------------------------|
| cmd/        | Includes command line tools used in this project.                                                                    |
| customize/  | Includes configuration files to customize behaviors of generated modules.                                            |
| gen/mod/    | Generated modules.                                                                                                   |
| gen/src/    | `TerraformModule` configuration files.                                                                               |
| pkg/        | Includes go packages used by the cli tools defined in `cmd`.                                                         |
| pkg/apis/   | Contains `TerraformModuleDefinition` structs.                                                                        | 
| pkg/ast/    | Contains `NewTokenizer`, `FromHtmlDoc` & `ToTerraformDefinition` functions.                                          | 
| pkg/tokens/ | Contains `Token`, `TokenStream` & `TokenTree` interfaces used to parse the markdowns into `TerraformModule` structs. |


# TODO
- We should allow overwriting configurations, e.g. adding a new key for `lifecycle.ignore_changes`. 
  - Maybe create a folder called `src_overwrite/`.
- Don't store `gen/` in this repo but rather in `s3` ?

# Modules

<!-- PLACEHOLDER BEGIN modules -->

| Modules | Description |
|---------|-------------|
|         |             |
|         |             |
|         |             |

<!-- PLACEHOLDER END modules -->

# Considerations

These modules are simple wrappers around the AWS provider to comply to the 
[tag specification](https://gitlab.com/alexandre.mahdhaoui/spec-tag).

The use of `for_each` in the resources was considered but dropped out as creation of different Accounts,OUs should 
not be respectively coupled between accounts,OUs.
-> We do not want to treat the accounts,OUs creation process as a monolith, but rather scale it horizontally. 
