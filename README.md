<!-- BEGIN DOTGIT-SYNC BLOCK MANAGED -->
<!-- markdownlint-disable -->
# 👋 Welcome to OpenTofu Module Github User

<center>

> ⚠️ IMPORTANT !
>
> Main repo is on [framagit.org](https://framagit.org/rdeville-public/terraform/module-github-user).
>
> On other online git platforms, they are just mirror of the main repo.
>
> Any issues, pull/merge requests, etc., might not be considered on those other
> platforms.

</center>

---

<center>

[![Licenses: (MIT OR BEERWARE)][license_badge]][license_url]
[![Changelog][changelog_badge]][changelog_badge_url]
[![Build][build_badge]][build_badge_url]
[![Release][release_badge]][release_badge_url]

</center>

[build_badge]: https://framagit.org/rdeville-public/terraform/module-github-user/badges/main/pipeline.svg
[build_badge_url]: https://framagit.org/rdeville-public/terraform/module-github-user/-/commits/main
[release_badge]: https://framagit.org/rdeville-public/terraform/module-github-user/-/badges/release.svg
[release_badge_url]: https://framagit.org/rdeville-public/terraform/module-github-user/-/releases/
[license_badge]: https://img.shields.io/badge/Licenses-MIT%20OR%20BEERWARE-blue
[license_url]: https://framagit.org/rdeville-public/terraform/module-github-user/blob/main/LICENSE
[changelog_badge]: https://img.shields.io/badge/Changelog-Python%20Semantic%20Release-yellow
[changelog_badge_url]: https://github.com/python-semantic-release/python-semantic-release

OpenTofu modules allowing to manage github user configuration.

---
<!-- BEGIN DOTGIT-SYNC BLOCK EXCLUDED CUSTOM_README -->
## 🚀 Usage

### Deploy User SSH Keys

```hcl
module "repo" {
  source = "git::https://framagit.org/rdeville-public/terraform/module-github-user.git"

  # Required variables
  ssh_keys = {
    "My Github SSH Key" = "ssh-ed25519 ABCDEFGHIJKLMNOPQRSTUVWXYZ Comment"
    "Another SSH Key" = file(~/.ssh/id_rsa.pub)
  }
}
```

### Deploy User GPG Keys

```hcl
module "repo" {
  source = "git::https://framagit.org/rdeville-public/terraform/module-github-user.git"

  # Required variables
  ssh_keys = {
    "SSH Key" = file(~/.ssh/id_rsa.pub)
  }

  # Example value
  gpg_keys = {
    "Key Identifier" = "-----BEGIN PGP PUBLIC KEY BLOCK-----\n...\n-----END PGP PUBLIC KEY BLOCK-----"
  }
}
```

<!-- BEGIN TF-DOCS -->
## ⚙️ Module Content

<details><summary>Click to reveal</summary>

### Table of Content

* [Requirements](#requirements)
* [Resources](#resources)
* [Inputs](#inputs)
  * [Required Inputs](#required-inputs)
  * [Optional Inputs](#optional-inputs)

### Requirements

* [opentofu](https://opentofu.org/docs/):
  `>= 1.8, < 2.0`
* [github](https://registry.terraform.io/providers/opentofu/github/):
  `~>6.2`

### Resources

* [resource.github_user_gpg_key.this](https://registry.terraform.io/providers/opentofu/github/latest/docs/resources/user_gpg_key)
  > Manager user GPG keys
* [resource.github_user_ssh_key.this](https://registry.terraform.io/providers/opentofu/github/latest/docs/resources/user_ssh_key)
  > Manager user SSH keys

<!-- markdownlint-capture -->
### Inputs

<!-- markdownlint-disable -->
#### Required Inputs

* [ssh_keys](#ssh_keys)

##### `ssh_keys`

Map of string, where key is the title of the Key and value is the SSH Key

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
map(string)
```

</details>
</div>
</div>

#### Optional Inputs

* [gpg_keys](#gpg_keys)


##### `gpg_keys`

Map of string, where key is just an identifier and value is the GPG key,
generated in ASCII-armored format

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  map(string)
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  {}
  ```

  </div>
</details>
<!-- markdownlint-restore -->

</details>

<!-- END TF-DOCS -->
<!-- END DOTGIT-SYNC BLOCK EXCLUDED CUSTOM_README -->
## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page][issues_pages].

You can also take a look at the [CONTRIBUTING.md][contributing].

[issues_pages]: https://framagit.org/rdeville-public/terraform/module-github-user/-/issues
[contributing]: https://framagit.org/rdeville-public/terraform/module-github-user/blob/main/CONTRIBUTING.md

## 👤 Maintainers

* 📧 [**Romain Deville** \<code@romaindeville.fr\>](mailto:code@romaindeville.fr)
  * Website: [https://romaindeville.fr](https://romaindeville.fr)
  * Github: [@rdeville](https://github.com/rdeville)
  * Gitlab: [@r.deville](https://gitlab.com/r.deville)
  * Framagit: [@rdeville](https://framagit.org/rdeville)

## 📝 License

Copyright © 2024 - 2025
 * [Romain Deville \<code@romaindeville.fr\>](code@romaindeville.fr)

This project is under following licenses (**OR**) :

* [MIT][main_license]
* [BEERWARE][beerware_license]

[main_license]: https://framagit.org/rdeville-public/terraform/module-github-user/blob/main/LICENSE
[beerware_license]: https://framagit.org/rdeville-public/terraform/module-github-user/blob/main/LICENSE.BEERWARE
<!-- END DOTGIT-SYNC BLOCK MANAGED -->
