# https://registry.terraform.io/providers/Telmate/proxmox/latest/docs
terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.13"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://${var.proxmox_address}:8006/api2/json"
}
