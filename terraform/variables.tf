variable "proxmox_host" {
  type        = string
  default     = "192.168.1.97"
  description = "Adresse du noeud Proxmox utilisé comme endpoint API"
}

variable "api_token" {
  type        = string
  description = "Token API Proxmox"
  sensitive   = true
}

variable "proxmox_node" {
  description = "Noeud Proxmox cible"
  type        = string
}

variable "vm_id" {
    description = "New VM Id"
    type        = number
}

variable "template_id" {
  description = "VM ID du template Debian utilisé pour le clonage"
  type        = number
}