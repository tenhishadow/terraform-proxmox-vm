variable "proxmox_address" {
  description = "ip/fqdn for terraform provider to call"
}
variable "target_node" {
  description = "node for vm"
}

variable "clone" {
  description = "which vm use to create new one"
}
variable "name" {
  description = "vm name"
}
variable "desc" {
  description = "vm description"
}

variable "memory" {
  description = "vm mem"
}
variable "cores" {
  description = "vm cpu cores"
}

variable "cloudinit_cdrom_storage" {
}
variable "ciuser" {
  description = "cloud-init - username"
}
variable "sshkeys" {
  description = "cloud-init - ssh-key(s)"
}
variable "ipconfig0" {
  type        = string
  default     = null
  description = "cloud-init - config for first network interface"
}

variable "network_bridge" {
  default = "vmbr0"
}
variable "network_tag" {
  default     = "-1"
  description = "dont use vlan by default"
}
variable "network_model" {
  default = "virtio"
}

variable "disk_storage" {}
variable "disk_size" {}
variable "id" {
  type        = string
  default     = null
  description = "vm id"
}
