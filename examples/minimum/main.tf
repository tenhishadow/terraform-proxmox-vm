## vars
variable "proxmox_address" {
  default = "192.168.1.2"
}
variable "proxmox_default_node" {
  default = "node01"
}
variable "proxmox_default_storage" {
  default = "pool01"
}
variable "proxmox_default_ssh_pub" {
  default = "xxx"
}

module "vm_new" {
  source = "../../"

  proxmox_address         = var.proxmox_address
  target_node             = var.proxmox_default_node
  name                    = "vm-new"
  clone                   = "template-debian-11"
  desc                    = "description"
  memory                  = 512
  cores                   = 1
  cloudinit_cdrom_storage = var.proxmox_default_storage
  ciuser                  = "ciusr01"
  sshkeys                 = var.proxmox_default_ssh_pub

  # network block
  network = {
    bridge = "vmbr0"
  }
  # disk block
  disk = {
    storage = var.proxmox_default_storage
    size    = "10G"
  }
}
