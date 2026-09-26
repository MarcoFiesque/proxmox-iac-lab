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
    endpoint = "https://${var.proxmox_host}:8006"
    api_token = var.api_token
    insecure = true
}
  