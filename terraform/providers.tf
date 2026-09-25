terraform {
  required_version = ">= 1.0"
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.93.0"
    }
  }

}

provider "proxmox"{
    endpoint = var.proxmox_endpoint
    api_token = var.api_token
    insecure = true
}
  