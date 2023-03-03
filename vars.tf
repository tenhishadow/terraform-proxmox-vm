variable "proxmox_address" {}
variable "target_node" {}
variable "name" {}
variable "clone" {}
variable "desc" {}

variable "memory" {}
variable "cores" {}

variable "cloudinit_cdrom_storage" {}
variable "ciuser" {}
variable "sshkeys" {}

variable "disk_storage" {}
variable "disk_size" {}

variable "network_bridge" {
  default = "vmbr0"
}
variable "network_tag" {
  default = "-1"
}
variable "network_model" {
  default = "virtio"
}
variable "ipconfig0" {
  type    = string
  default = null
}
