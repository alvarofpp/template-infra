# Template for IaC using Terraform

This template comes with a pre-prepared structure for you to manage your personal
repositories or organizations on GitHub, as well as making it easy to expand to other
contexts.

Considerations for use:

- The repository currently uses `.tfvars` files with the necessary variables to work,
  however it is recommended to use some other more secure method, such as a platform to
  save secrets, keys, etc.

## Migrating GitHub resources to Terraform

You can use the [alvarofpp/import-from-github-to-terraform][repo-import] repository to
perform the migration of an organization or your personal repositories to Terraform.

[repo-import]: https://github.com/alvarofpp/import-from-github-to-terraform
