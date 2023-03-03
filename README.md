# tfm_proxmox_vm
terraform module to create vm in Proxmox Virtual Environment

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 2.9.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 2.9.13 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.this](https://registry.terraform.io/providers/Telmate/proxmox/2.9.13/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ciuser"></a> [ciuser](#input\_ciuser) | cloud-init - username | `any` | n/a | yes |
| <a name="input_clone"></a> [clone](#input\_clone) | which vm use to create new one | `any` | n/a | yes |
| <a name="input_cloudinit_cdrom_storage"></a> [cloudinit\_cdrom\_storage](#input\_cloudinit\_cdrom\_storage) | n/a | `any` | n/a | yes |
| <a name="input_cores"></a> [cores](#input\_cores) | vm cpu cores | `any` | n/a | yes |
| <a name="input_desc"></a> [desc](#input\_desc) | vm description | `any` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | n/a | `any` | n/a | yes |
| <a name="input_disk_storage"></a> [disk\_storage](#input\_disk\_storage) | n/a | `any` | n/a | yes |
| <a name="input_id"></a> [id](#input\_id) | vm id | `string` | `null` | no |
| <a name="input_ipconfig0"></a> [ipconfig0](#input\_ipconfig0) | cloud-init - config for first network interface | `string` | `null` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | vm mem | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | vm name | `any` | n/a | yes |
| <a name="input_network_bridge"></a> [network\_bridge](#input\_network\_bridge) | n/a | `string` | `"vmbr0"` | no |
| <a name="input_network_model"></a> [network\_model](#input\_network\_model) | n/a | `string` | `"virtio"` | no |
| <a name="input_network_tag"></a> [network\_tag](#input\_network\_tag) | dont use vlan by default | `string` | `"-1"` | no |
| <a name="input_proxmox_address"></a> [proxmox\_address](#input\_proxmox\_address) | ip/fqdn for terraform provider to call | `any` | n/a | yes |
| <a name="input_sshkeys"></a> [sshkeys](#input\_sshkeys) | cloud-init - ssh-key(s) | `any` | n/a | yes |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | node for vm | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip"></a> [ip](#output\_ip) | n/a |
<!-- END_TF_DOCS -->