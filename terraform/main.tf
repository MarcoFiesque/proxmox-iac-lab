locals {
  cloud_init = templatefile(
    "${path.module}/cloud-init.yaml.tftpl",
    {
      ssh_public_key = trimspace(
        file("/home/pi4/.ssh/id_ed25519_ansible.pub")
      )
    }
  )
}

resource "proxmox_virtual_environment_vm" "lab_vm" {
    name = "lab-01"
    node_name = var.proxmox_node
    vm_id = var.vm_id

    clone {
        vm_id = var.template_id 
    }

    cpu {
        cores = 2
    }

    memory {
        dedicated = 2048
    }

    network_device {
        bridge = "vmbr0"
        vlan_id = var.vlan_id
    }

    initialization {
        user_account {
            username = "ansible"

            keys = [
                trimspace(file("/home/pi4/.ssh/id_ed25519_ansible.pub"))
            ]
        }

        ip_config {
            ipv4 {
                address = "10.99.99.200/24"
                gateway = "10.99.99.1"
            }
        }
    }
    
}