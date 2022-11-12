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

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure the DigitalOcean Provide
provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "my_ssh_key" {
        name = "4640_key"
}

data "digitalocean_project" "lab_project" {
        name = "ACIT4640-Lab"
}

# Create a new tag
resource "digitalocean_tag" "do_tag" {
  name = "Web"
}

# Create a new vpc
resource "digitalocean_vpc" "web_vpc" {
  name     = "web"
  region   = var.region
}

# Create a new Web Droplet in the sfo3 region
resource "digitalocean_droplet" "web" {
  image  = "rockylinux-9-x64"
  count  = var.droplet_count
  name   = "web-${count.index + 1}"
  tags   = [digitalocean_tag.do_tag.id]
  region = var.region
  size   = "s-1vcpu-512mb-10gb"
  ssh_keys = [data.digitalocean_ssh_key.my_ssh_key.id]
  vpc_uuid = digitalocean_vpc.web_vpc.id

  lifecycle {
    create_before_destroy = true
  }

}

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
