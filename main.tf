resource "proxmox_vm_qemu" "this" {
  oncreate               = true # start or not
  define_connection_info = true # output with ip
  qemu_os                = "l26"
  agent                  = 1
  scsihw                 = "virtio-scsi-single"
  target_node            = var.target_node
  # create
  name  = var.name
  desc  = var.desc
  vmid  = var.id != null ? var.id : ""
  clone = var.clone
  # resources
  memory = var.memory
  cores  = var.cores
  # cloud-init block
  os_type                 = "cloud-init"
  cloudinit_cdrom_storage = var.cloudinit_cdrom_storage
  ciuser                  = var.ciuser
  sshkeys                 = var.sshkeys
  vga {
    type = "none"
  }
  # network block
  ipconfig0 = var.ipconfig0 != null ? var.ipconfig0 : ""
  network {
    bridge = var.network_bridge
    model  = var.network_model
    tag    = var.network_tag
  }

  # disk block
  disk {
    iothread = 1
    storage  = var.disk_storage
    size     = var.disk_size
    type     = "virtio"
  }
}
