module "vm_new" {
  source = "../../"

  # connection
  proxmox_address = var.proxmox_address
  # allocation
  target_node = var.proxmox_default_node
  # create
  name  = "terraform-proxmox-vm"
  desc  = "example | minimal"
  clone = "template-debian-11"
  # cloud-init
  ciuser                  = var.vm_user
  cloudinit_cdrom_storage = var.proxmox_default_storage
  sshkeys                 = var.proxmox_default_ssh_pub
  # resources
  cores  = 1
  memory = 512
  ## disk
  disk_size    = "10G"
  disk_storage = var.proxmox_default_storage
}
