variable "proxmox_address" {
  description = "ip/fqdn for terraform provider to call"
}
variable "proxmox_default_node" {
  description = "node for vm"
}
variable "proxmox_default_storage" {
  description = "storage for vm"
}
variable "proxmox_default_ssh_pub" {
  description = "ssh-key for vm(cloud-init)"
}
variable "vm_user" {
  description = "user for vm(cloud-init)"
}

