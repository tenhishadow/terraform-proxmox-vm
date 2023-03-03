resource "proxmox_vm_qemu" "this" {
  oncreate               = true # start or not
  define_connection_info = true # output with ip
  qemu_os                = "l26"
  agent                  = 1
  scsihw                 = "virtio-scsi-single"
  vga {
    type = "none"
  }
  target_node = var.target_node
  name        = var.name
  clone       = var.clone
  desc        = var.desc
  memory      = var.memory
  cores       = var.cores

  # cloud-init block
  os_type                 = "cloud-init"
  cloudinit_cdrom_storage = var.cloudinit_cdrom_storage
  ciuser                  = var.ciuser
  sshkeys                 = var.sshkeys

  # network block
  ipconfig0 = var.ipconfig0 != null ? var.ipconfig0 : ""
  network {
    bridge = var.network["bridge"]
    model  = "virtio"
    tag    = var.network["tag"] != null ? var.network["tag"] : ""
  }

  # disk block
  disk {
    iothread = 1
    storage  = var.disk["storage"]
    size     = var.disk["size"]
    type     = "virtio"
  }
}
