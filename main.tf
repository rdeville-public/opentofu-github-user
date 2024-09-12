# Manager user SSH keys
resource "github_user_ssh_key" "this" {
  for_each = var.ssh_keys

  title = each.key
  key   = each.value
}

# Manager user GPG keys
resource "github_user_gpg_key" "this" {
  for_each = var.gpg_keys

  armored_public_key = each.value
}
