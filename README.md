# sentinel-for-vault-selfservice-subunit-demo

The subunit, or business unit will get it's own Vault Namespaces, Github Reposotpry and Terraform Workspace that acts as a pipeline between the two.

For security reasons, below sentinel policies are applied:

1. Only allow Terraform Provider for Vault.
2. Only allow "vault_namespace", "vault_token", "vault_policy","vault_generic_secret","vault_mount" resource to be created.
3. only allow private module from it's own orgnization.

By applying those security limitations, Namespace admins don't need to review every single line of pull request, and still confident that the Vault is configured securely.

