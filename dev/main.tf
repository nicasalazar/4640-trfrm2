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

