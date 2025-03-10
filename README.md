# tf-demo-modules
This is a demonstration of how Terraform modules can be used to build, manage and destroy resources.

## Run Terraform
Create resources with Terraform:
```
terraform init
terraform plan
terraform apply
```
To remove all resources created by Terraform:
```
terraform destroy
```

## Inputs
| Name | Description | Type |
| ---- | ----------- | ---- |
| boot_disk_size | The boot disk for the instance/s. | `number` |
| boot_disk_type | The GCE disk type. Such as `pd-standard` | `string`|
| image | The image from which to initialize this disk. | `string` |
| ip_cidr_range | The range of internal addresses that are owned by the subnetwork. | `string` |
| machine_type | The machine type to create. | `string` |`pd-balanced` or `pd-ssd`. | `string` |
| name | A name to include in the resources. | `string` |
| project | The project in which to create the resources. | `string` |
| region | The region the resources should be created in. Select from `australia-southeast1` or `australia-southeast2` | `string` |
| vm_count | The number of VMs to build. | `number` |
| zone | The zone the resources should be created in. | `string` |


## Outputs
| Name | Description |
| ---- | ----------- |
| compute_instance_ids | List of compute instance IDs. |
| compute_instance_self_links | List of compute instance self links. |
| network_id | Network ID |
| network_self_link | Network self link. |
| subnetwork_id | Subnetwork ID. |
| subnetwork_self_link | Subnetwork self link. |
