# User SSH Keys variables
variable "ssh_keys" {
  # Key is SSH key title
  type        = map(string)
  description = <<-EOM
  Map of string, where key is the title of the Key and value is the SSH Key
  EOM
}

# User GPG Keys variables
variable "gpg_keys" {
  type        = set(string)
  description = <<-EOM
  Set of string, where value is the GPG key, generated in ASCII-armored format
  EOM

  nullable = false
  default  = []
}