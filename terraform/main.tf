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

}




