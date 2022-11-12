# 4640 Terraform 2

### Create a API Key in Digital Ocean
1. Create a digitocean account
2. Generate a new API key and copy the key
3. Remote into you Ubuntu host machine and create a .env file
4. Add the following to your .env file

```bash
export TF_VAR_do_token=<your api key>
```
5. Run API key
```bash
source .env
```

### Create two directories dev and mgmt
```bash
mkdir dev
mkdir mgmt
```

### Take the trfrm1 terraform configuration from last week and make changes in the dev directory

1. Copy the main.tf file from trfrm1 and make the following changes:
* Add a load balancer to the VPC
* Use variables (see variables.tf)
* Create atleast 2 droplets


```bash
Last login: Fri Nov 11 18:14:45 on ttys000

The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
Dannicahs-MacBook-Pro:~ dannicahsalazar$ ssh -i "ACIT4640_Lab_key.pem" ubuntu@54.201.125.230
Warning: Identity file ACIT4640_Lab_key.pem not accessible: No such file or directory.
The authenticity of host '54.201.125.230 (54.201.125.230)' can't be established.
ECDSA key fingerprint is SHA256:imafAq/QtppWAd5dIcl1C8l8uzBDuQ5DpUQ8aZkiHOM.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '54.201.125.230' (ECDSA) to the list of known hosts.
ubuntu@54.201.125.230: Permission denied (publickey).
Dannicahs-MacBook-Pro:~ dannicahsalazar$ sudo ssh -i "ACIT4640_Lab_key.pem" ubuntu@54.201.125.230
Password:
Warning: Identity file ACIT4640_Lab_key.pem not accessible: No such file or directory.
The authenticity of host '54.201.125.230 (54.201.125.230)' can't be established.
ECDSA key fingerprint is SHA256:imafAq/QtppWAd5dIcl1C8l8uzBDuQ5DpUQ8aZkiHOM.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '54.201.125.230' (ECDSA) to the list of known hosts.
ubuntu@54.201.125.230: Permission denied (publickey).
Dannicahs-MacBook-Pro:~ dannicahsalazar$ cd sshkeys
Dannicahs-MacBook-Pro:sshkeys dannicahsalazar$ sudo ssh -i "ACIT4640_Lab_key.pem" ubuntu@54.201.125.230
Welcome to Ubuntu 20.04.5 LTS (GNU/Linux 5.15.0-1019-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

 System information disabled due to load higher than 1.0


63 updates can be applied immediately.
47 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable


Last login: Sat Nov  5 04:45:53 2022 from 66.183.27.191
ubuntu@ip-10-42-10-24:~$ ls
4640-trfrm1  aws_keys  wk5_terraform
ubuntu@ip-10-42-10-24:~$ git clone https://github.com/nicasalazar/4640-trfrm2.git
Cloning into '4640-trfrm2'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 601 bytes | 601.00 KiB/s, done.
ubuntu@ip-10-42-10-24:~$ ls
4640-trfrm1  4640-trfrm2  aws_keys  wk5_terraform
ubuntu@ip-10-42-10-24:~$ cd 4640-trfrm2
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ mkdir dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ mdkir mgmt

Command 'mdkir' not found, did you mean:

  command 'mdir' from deb mtools (4.0.24-1)
  command 'mkdir' from deb coreutils (8.30-3ubuntu2)

Try: sudo apt install <deb name>

ubuntu@ip-10-42-10-24:~/4640-trfrm2$ mkdir mgmt
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ ls
README.md  dev  mgmt
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ git push
Username for 'https://github.com': nicasalazar
Password for 'https://nicasalazar@github.com': 
Everything up-to-date
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ touch .gitignore
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ nano .gitignore
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ cd ../
ubuntu@ip-10-42-10-24:~$ cd 4640-trfrm
-bash: cd: 4640-trfrm: No such file or directory
ubuntu@ip-10-42-10-24:~$ cd 4640-trfrm1
ubuntu@ip-10-42-10-24:~/4640-trfrm1$ ls
4640_Lab  README.md  main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm1$ nano do_token
ubuntu@ip-10-42-10-24:~/4640-trfrm1$ ls
4640_Lab  README.md  main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm1$ cd 4640_Lab
-bash: cd: 4640_Lab: Not a directory
ubuntu@ip-10-42-10-24:~/4640-trfrm1$ ls
4640_Lab  README.md  main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm1$ cd ../
ubuntu@ip-10-42-10-24:~$ cd 4640-trfrm2
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ ls
README.md  dev  mgmt
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ nano .env
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ ls
README.md  dev  mgmt
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ cd dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd ../
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/ubuntu/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/ubuntu/.ssh/id_rsa
Your public key has been saved in /home/ubuntu/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:5GJeVGgsjtwjpbwwRzp4E9p+gUccGHyW682stAlscwI ubuntu@ip-10-42-10-24
The key's randomart image is:
+---[RSA 3072]----+
| ..+.o . ..      |
|  + B o +.       |
| + @ B oo        |
|E X @ ++         |
| = O Bo.S        |
|  B *o+o         |
| . B +.          |
|    +            |
|                 |
+----[SHA256]-----+
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ cat ~/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD6DjEEV2f8RyvlKJgfWPvE99YCj2BvKL5AOLJ2XJRSwzhuddZg8TNx55D+RmmHT7jl0cnOEhP0ajFBpVSTzU0ZlWvPECHEUxmGk8PZMJMjKKRzdnuvPmSgPv0HhkzughwpZwAiqJU1DXb0l7hCZxbVKVasCmWVzCCjmTjbDkKPl909Rk6Wd9jrQybiGntuC1m19j6Fdg5SuC6F6Q/pg9ofA9vwlx4t4bVNAd2GlXpvjHy7yiVnsCdyff9VOLC3yzBN72cEpzhPW0xClmPTqfE+zmpvfu0i9omGI1t+FCDXNvwQZeRmgxP/vgT2ITgiG7GDdS56RRfGtU5uqk9ct9hP1l0RXnaAwPahV5lwML3gHCehykmE2bhvECQx7oqaaW7rOJhM7odh0fXkMNwRbDuzHu6reYm9ZfzqfzZoeaEUMvnQUy7s0agpxLHO+bd745FuTJfkreaowg9PBT6DxKbZUlITwViz+ggQVV1E5qS5lsIRjhxjd+HFnm8OlBqJU0s= ubuntu@ip-10-42-10-24
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ ls
README.md  dev  mgmt
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ cd dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ ls
main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd ../
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ cd mgmt
ubuntu@ip-10-42-10-24:~/4640-trfrm2/mgmt$ nano variables.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/mgmt$ cd ../
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ cd dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding digitalocean/digitalocean versions matching "~> 2.0"...
- Installing digitalocean/digitalocean v2.23.0...
- Installed digitalocean/digitalocean v2.23.0 (signed by a HashiCorp partner, key ID F82037E524B9C0E8)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ ls
main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of digitalocean/digitalocean from the dependency lock file
- Using previously-installed digitalocean/digitalocean v2.23.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ ls
main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ ls
main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd .terraform/
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev/.terraform$ ls
providers
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev/.terraform$ cd ../
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ source .env
-bash: .env: No such file or directory
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd ../
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ source .env
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ mv .env ~/4640-trfrm2/dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2$ cd dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ source .env
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of digitalocean/digitalocean from the dependency lock file
- Using previously-installed digitalocean/digitalocean v2.23.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ ls
main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd .terraform.lock.hcl
-bash: cd: .terraform.lock.hcl: Not a directory
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ git push
Username for 'https://github.com': nicasalazar
Password for 'https://nicasalazar@github.com': 
Everything up-to-date
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ git add .
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ git commit -m "initialized terraform" .
[main f021c31] initialized terraform
 6 files changed, 1371 insertions(+)
 create mode 100644 dev/.terraform.lock.hcl
 create mode 100644 dev/.terraform/providers/registry.terraform.io/digitalocean/digitalocean/2.23.0/linux_amd64/CHANGELOG.md
 create mode 100644 dev/.terraform/providers/registry.terraform.io/digitalocean/digitalocean/2.23.0/linux_amd64/LICENSE
 create mode 100644 dev/.terraform/providers/registry.terraform.io/digitalocean/digitalocean/2.23.0/linux_amd64/README.md
 create mode 100755 dev/.terraform/providers/registry.terraform.io/digitalocean/digitalocean/2.23.0/linux_amd64/terraform-provider-digitalocean_v2.23.0
 create mode 100644 dev/main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ git push
Username for 'https://github.com': nicasalazar
Password for 'https://nicasalazar@github.com': 
Enumerating objects: 17, done.
Counting objects: 100% (17/17), done.
Compressing objects: 100% (10/10), done.
Writing objects: 100% (16/16), 6.72 MiB | 3.44 MiB/s, done.
Total 16 (delta 0), reused 0 (delta 0)
To https://github.com/nicasalazar/4640-trfrm2.git
   cbdcc42..f021c31  main -> main
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd mgmt
-bash: cd: mgmt: No such file or directory
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd /mgmt
-bash: cd: /mgmt: No such file or directory
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd ../mgmt
ubuntu@ip-10-42-10-24:~/4640-trfrm2/mgmt$ mv variables.tf ../dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2/mgmt$ ls
ubuntu@ip-10-42-10-24:~/4640-trfrm2/mgmt$ cd ../dev
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ ls
main.tf  variables.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano variables.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ git add .
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ git commit -m "made changes to variabke" .
[main db5600c] made changes to variabke
 2 files changed, 39 insertions(+)
 create mode 100644 dev/variables.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ git push
Username for 'https://github.com': nicasalazar
Password for 'https://nicasalazar@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 852 bytes | 852.00 KiB/s, done.
Total 5 (delta 0), reused 0 (delta 0)
To https://github.com/nicasalazar/4640-trfrm2.git
   f021c31..db5600c  main -> main
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd main.tf
-bash: cd: main.tf: Not a directory
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ touch terraform.tfvars
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ cd terraform.tfvars
-bash: cd: terraform.tfvars: Not a directory
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano terraform.tfvars
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano variables.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform plans
Terraform has no command named "plans". Did you mean "plan"?

To see all of Terraform's top-level commands, run:
  terraform -help

ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform plan
╷
│ Error: Reference to undeclared resource
│ 
│   on main.tf line 42, in resource "digitalocean_droplet" "web":
│   42:   ssh_keys = [data.digitalocean_ssh_key.droplet_ssh_key.id]
│ 
│ A data resource "digitalocean_ssh_key" "droplet_ssh_key" has
│ not been declared in the root module.
╵
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform apply
╷
│ Error: Reference to undeclared resource
│ 
│   on main.tf line 42, in resource "digitalocean_droplet" "web":
│   42:   ssh_keys = [data.digitalocean_ssh_key.droplet_ssh_key.id]
│ 
│ A data resource "digitalocean_ssh_key" "droplet_ssh_key" has not been
│ declared in the root module.
╵
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform apply
data.digitalocean_project.lab_project: Reading...
data.digitalocean_ssh_key.my_ssh_key: Reading...
data.digitalocean_ssh_key.my_ssh_key: Read complete after 0s [name=4640_key]
data.digitalocean_project.lab_project: Read complete after 1s [id=08f8bfa1-27ca-4f7e-9c14-572e20ae77d6]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # digitalocean_droplet.web[0] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-1"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_droplet.web[1] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-2"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_droplet.web[2] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-3"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_loadbalancer.public will be created
  + resource "digitalocean_loadbalancer" "public" {
      + algorithm                        = "round_robin"
      + disable_lets_encrypt_dns_records = false
      + droplet_ids                      = (known after apply)
      + droplet_tag                      = "Web"
      + enable_backend_keepalive         = false
      + enable_proxy_protocol            = false
      + id                               = (known after apply)
      + ip                               = (known after apply)
      + name                             = "loadbalancer-1"
      + redirect_http_to_https           = false
      + region                           = "sfo3"
      + size_unit                        = (known after apply)
      + status                           = (known after apply)
      + urn                              = (known after apply)
      + vpc_uuid                         = (known after apply)

      + forwarding_rule {
          + certificate_id   = (known after apply)
          + certificate_name = (known after apply)
          + entry_port       = 80
          + entry_protocol   = "http"
          + target_port      = 80
          + target_protocol  = "http"
          + tls_passthrough  = false
        }

      + healthcheck {
          + check_interval_seconds   = 10
          + healthy_threshold        = 5
          + port                     = 22
          + protocol                 = "tcp"
          + response_timeout_seconds = 5
          + unhealthy_threshold      = 3
        }

      + sticky_sessions {
          + cookie_name        = (known after apply)
          + cookie_ttl_seconds = (known after apply)
          + type               = (known after apply)
        }
    }

  # digitalocean_project_resources.project_attach will be created
  + resource "digitalocean_project_resources" "project_attach" {
      + id        = (known after apply)
      + project   = "08f8bfa1-27ca-4f7e-9c14-572e20ae77d6"
      + resources = (known after apply)
    }

  # digitalocean_tag.do_tag will be created
  + resource "digitalocean_tag" "do_tag" {
      + databases_count        = (known after apply)
      + droplets_count         = (known after apply)
      + id                     = (known after apply)
      + images_count           = (known after apply)
      + name                   = "Web"
      + total_resource_count   = (known after apply)
      + volume_snapshots_count = (known after apply)
      + volumes_count          = (known after apply)
    }

  # digitalocean_vpc.web_vpc will be created
  + resource "digitalocean_vpc" "web_vpc" {
      + created_at = (known after apply)
      + default    = (known after apply)
      + id         = (known after apply)
      + ip_range   = (known after apply)
      + name       = "web"
      + region     = "sfo3"
      + urn        = (known after apply)
    }

Plan: 7 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + server_ip = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: no

Apply cancelled.
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform plan
data.digitalocean_ssh_key.my_ssh_key: Reading...
data.digitalocean_project.lab_project: Reading...
data.digitalocean_ssh_key.my_ssh_key: Read complete after 1s [name=4640_key]
data.digitalocean_project.lab_project: Read complete after 1s [id=08f8bfa1-27ca-4f7e-9c14-572e20ae77d6]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # digitalocean_droplet.web[0] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-1"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_droplet.web[1] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-2"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_droplet.web[2] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-3"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_loadbalancer.public will be created
  + resource "digitalocean_loadbalancer" "public" {
      + algorithm                        = "round_robin"
      + disable_lets_encrypt_dns_records = false
      + droplet_ids                      = (known after apply)
      + droplet_tag                      = "Web"
      + enable_backend_keepalive         = false
      + enable_proxy_protocol            = false
      + id                               = (known after apply)
      + ip                               = (known after apply)
      + name                             = "loadbalancer-1"
      + redirect_http_to_https           = false
      + region                           = "sfo3"
      + size_unit                        = (known after apply)
      + status                           = (known after apply)
      + urn                              = (known after apply)
      + vpc_uuid                         = (known after apply)

      + forwarding_rule {
          + certificate_id   = (known after apply)
          + certificate_name = (known after apply)
          + entry_port       = 80
          + entry_protocol   = "http"
          + target_port      = 80
          + target_protocol  = "http"
          + tls_passthrough  = false
        }

      + healthcheck {
          + check_interval_seconds   = 10
          + healthy_threshold        = 5
          + port                     = 22
          + protocol                 = "tcp"
          + response_timeout_seconds = 5
          + unhealthy_threshold      = 3
        }

      + sticky_sessions {
          + cookie_name        = (known after apply)
          + cookie_ttl_seconds = (known after apply)
          + type               = (known after apply)
        }
    }

  # digitalocean_project_resources.project_attach will be created
  + resource "digitalocean_project_resources" "project_attach" {
      + id        = (known after apply)
      + project   = "08f8bfa1-27ca-4f7e-9c14-572e20ae77d6"
      + resources = (known after apply)
    }

  # digitalocean_tag.do_tag will be created
  + resource "digitalocean_tag" "do_tag" {
      + databases_count        = (known after apply)
      + droplets_count         = (known after apply)
      + id                     = (known after apply)
      + images_count           = (known after apply)
      + name                   = "Web"
      + total_resource_count   = (known after apply)
      + volume_snapshots_count = (known after apply)
      + volumes_count          = (known after apply)
    }

  # digitalocean_vpc.web_vpc will be created
  + resource "digitalocean_vpc" "web_vpc" {
      + created_at = (known after apply)
      + default    = (known after apply)
      + id         = (known after apply)
      + ip_range   = (known after apply)
      + name       = "web"
      + region     = "sfo3"
      + urn        = (known after apply)
    }

Plan: 7 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + server_ip = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]

─────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform
can't guarantee to take exactly these actions if you run "terraform
apply" now.
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ terraform apply
data.digitalocean_ssh_key.my_ssh_key: Reading...
data.digitalocean_project.lab_project: Reading...
data.digitalocean_ssh_key.my_ssh_key: Read complete after 1s [name=4640_key]
data.digitalocean_project.lab_project: Read complete after 1s [id=08f8bfa1-27ca-4f7e-9c14-572e20ae77d6]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # digitalocean_droplet.web[0] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-1"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_droplet.web[1] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-2"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_droplet.web[2] will be created
  + resource "digitalocean_droplet" "web" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + graceful_shutdown    = false
      + id                   = (known after apply)
      + image                = "rockylinux-9-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-3"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "sfo3"
      + resize_disk          = true
      + size                 = "s-1vcpu-512mb-10gb"
      + ssh_keys             = [
          + "36747121",
        ]
      + status               = (known after apply)
      + tags                 = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_loadbalancer.public will be created
  + resource "digitalocean_loadbalancer" "public" {
      + algorithm                        = "round_robin"
      + disable_lets_encrypt_dns_records = false
      + droplet_ids                      = (known after apply)
      + droplet_tag                      = "Web"
      + enable_backend_keepalive         = false
      + enable_proxy_protocol            = false
      + id                               = (known after apply)
      + ip                               = (known after apply)
      + name                             = "loadbalancer-1"
      + redirect_http_to_https           = false
      + region                           = "sfo3"
      + size_unit                        = (known after apply)
      + status                           = (known after apply)
      + urn                              = (known after apply)
      + vpc_uuid                         = (known after apply)

      + forwarding_rule {
          + certificate_id   = (known after apply)
          + certificate_name = (known after apply)
          + entry_port       = 80
          + entry_protocol   = "http"
          + target_port      = 80
          + target_protocol  = "http"
          + tls_passthrough  = false
        }

      + healthcheck {
          + check_interval_seconds   = 10
          + healthy_threshold        = 5
          + port                     = 22
          + protocol                 = "tcp"
          + response_timeout_seconds = 5
          + unhealthy_threshold      = 3
        }

      + sticky_sessions {
          + cookie_name        = (known after apply)
          + cookie_ttl_seconds = (known after apply)
          + type               = (known after apply)
        }
    }

  # digitalocean_project_resources.project_attach will be created
  + resource "digitalocean_project_resources" "project_attach" {
      + id        = (known after apply)
      + project   = "08f8bfa1-27ca-4f7e-9c14-572e20ae77d6"
      + resources = (known after apply)
    }

  # digitalocean_tag.do_tag will be created
  + resource "digitalocean_tag" "do_tag" {
      + databases_count        = (known after apply)
      + droplets_count         = (known after apply)
      + id                     = (known after apply)
      + images_count           = (known after apply)
      + name                   = "Web"
      + total_resource_count   = (known after apply)
      + volume_snapshots_count = (known after apply)
      + volumes_count          = (known after apply)
    }

  # digitalocean_vpc.web_vpc will be created
  + resource "digitalocean_vpc" "web_vpc" {
      + created_at = (known after apply)
      + default    = (known after apply)
      + id         = (known after apply)
      + ip_range   = (known after apply)
      + name       = "web"
      + region     = "sfo3"
      + urn        = (known after apply)
    }

Plan: 7 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + server_ip = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

digitalocean_tag.do_tag: Creating...
digitalocean_vpc.web_vpc: Creating...
digitalocean_tag.do_tag: Creation complete after 1s [id=Web]
digitalocean_vpc.web_vpc: Creation complete after 1s [id=4e1c9066-04e5-43ac-9160-6c1dad11b780]
digitalocean_droplet.web[2]: Creating...
digitalocean_droplet.web[1]: Creating...
digitalocean_droplet.web[0]: Creating...
digitalocean_loadbalancer.public: Creating...
digitalocean_droplet.web[2]: Still creating... [10s elapsed]
digitalocean_loadbalancer.public: Still creating... [10s elapsed]
digitalocean_droplet.web[1]: Still creating... [10s elapsed]
digitalocean_droplet.web[0]: Still creating... [10s elapsed]
digitalocean_droplet.web[2]: Still creating... [20s elapsed]
digitalocean_loadbalancer.public: Still creating... [20s elapsed]
digitalocean_droplet.web[0]: Still creating... [20s elapsed]
digitalocean_droplet.web[1]: Still creating... [20s elapsed]
digitalocean_droplet.web[2]: Still creating... [30s elapsed]
digitalocean_droplet.web[1]: Still creating... [30s elapsed]
digitalocean_loadbalancer.public: Still creating... [30s elapsed]
digitalocean_droplet.web[0]: Still creating... [30s elapsed]
digitalocean_droplet.web[0]: Creation complete after 31s [id=325630620]
digitalocean_droplet.web[2]: Creation complete after 32s [id=325630619]
digitalocean_loadbalancer.public: Still creating... [40s elapsed]
digitalocean_droplet.web[1]: Still creating... [40s elapsed]
digitalocean_droplet.web[1]: Creation complete after 41s [id=325630621]
digitalocean_project_resources.project_attach: Creating...
digitalocean_project_resources.project_attach: Creation complete after 2s [id=08f8bfa1-27ca-4f7e-9c14-572e20ae77d6]
digitalocean_loadbalancer.public: Still creating... [50s elapsed]
digitalocean_loadbalancer.public: Still creating... [1m0s elapsed]
digitalocean_loadbalancer.public: Still creating... [1m10s elapsed]
digitalocean_loadbalancer.public: Still creating... [1m20s elapsed]
digitalocean_loadbalancer.public: Still creating... [1m30s elapsed]
digitalocean_loadbalancer.public: Still creating... [1m40s elapsed]
digitalocean_loadbalancer.public: Creation complete after 1m41s [id=bd41b825-7af3-4799-8864-cdcc154b61ab]

Apply complete! Resources: 7 added, 0 changed, 0 destroyed.

Outputs:

server_ip = [
  "164.92.71.238",
  "159.223.200.82",
  "164.92.71.95",
]
ubuntu@ip-10-42-10-24:~/4640-trfrm2/dev$ nano main.tf

  GNU nano 4.8                     main.tf                                
# Add new web droplets to existing 4640_labs project
resource "digitalocean_project_resources" "project_attach" {
  project = data.digitalocean_project.lab_project.id
  resources = flatten([ digitalocean_droplet.web.*.urn ])
}

resource "digitalocean_loadbalancer" "public" {
  name   = "loadbalancer-1"
  region = var.region

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_tag = "Web"
  vpc_uuid = digitalocean_vpc.web_vpc.id
}

output "server_ip" {
  value = digitalocean_droplet.web.*.ipv4_address
}
```
