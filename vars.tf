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

variable "network" {
  type = map(any)
}
variable "disk" {
  type = map(any)
}
variable "ipconfig0" {
  type    = string
  default = null
}
