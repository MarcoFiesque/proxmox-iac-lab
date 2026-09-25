resource "proxmox_virtual_environment_vm" "lab_vm" {
    name = "lab-01"
    node_name = var.proxmox_node

    clone {
        vm_id = var.template_id 
    }
}



