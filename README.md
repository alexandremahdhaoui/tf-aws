# tf-aws

_[ TOC ]_

## Repository structure

| Path       | Description                                                            |
|------------|------------------------------------------------------------------------|
| cmd/       | Includes command line tools used in this project.                      |
| gen/mod/   | Includes all generated modules.                                        |
| gen/src/   | Includes all configuration files.                                      |
| pkg/       | Includes go packages used by the golang cli tools defined in `cmd`.    |
| templates/ | Includes all templating files used to generate the content inside src. |


## TODO
- Get all the Data for resource & datasource from GitHub:
  - Links
    - https://github.com/hashicorp/terraform-provider-aws/tree/main/website/docs
    - https://github.com/hashicorp/terraform-provider-aws/tree/v4.38.0/website/docs
  - Parse MD files, get information & write them into `src`.
  - We write data into `src` to control the intermediary data & modify some behavior, e.g. by adding values to 
  `lifecycle.ignore_changes`.
  - We do not really need to keep this data to be honest. Maybe for debugging it will be easier to keep it in the 
  beginning.


## Modules

<!-- PLACEHOLDER BEGIN modules -->

| Modules | Description |
|---------|-------------|
|         |             |
|         |             |
|         |             |

<!-- PLACEHOLDER END modules -->

## Considerations

These modules are simple wrappers around the AWS provider to comply to the 
[tag specification](https://gitlab.com/alexandre.mahdhaoui/spec-tag).

The use of `for_each` in the resources was considered but dropped out as creation of different Accounts,OUs should 
not be respectively coupled between accounts,OUs.
-> We do not want to treat the accounts,OUs creation process as a monolith, but rather scale it horizontally. 
