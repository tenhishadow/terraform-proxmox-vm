## vars
variable "proxmox_address" {}
variable "proxmox_default_node" {}
variable "proxmox_default_storage" {}
variable "proxmox_default_ssh_pub" {}

module "vm_new" {
  source = "../../"

  # connection
  proxmox_address         = var.proxmox_address
  # allocation
  target_node             = var.proxmox_default_node
  # create
  name                    = "vm-new"
  desc                    = "description"
  clone                   = "template-debian-11"
  # cloud-init
  ciuser                  = "ciusr01"
  cloudinit_cdrom_storage = var.proxmox_default_storage
  sshkeys                 = var.proxmox_default_ssh_pub
  # resources
  cores                   = 1
  memory                  = 512
  ## disk
  disk_size               = "10G"
  disk_storage            = var.proxmox_default_storage
  ## net
  network_tag             = 1001
}
