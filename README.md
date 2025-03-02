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
| project | The project in which to create the resources. | `string` |
| services | A list of Google APIs to enable in the project. | `list` |
| vm_count | The number of VMs to build. | `number` |
| name | A name to include in the resources. | `string` |
| region | The region the resources should be created in. | `string` |
| zone | The zone the resources should be created in. | `string` |
| ip_cidr_range | The range of internal addresses that are owned by the subnetwork. | `string` |
| machine_type | The machine type to create. | `string` |
| boot_disk_size | The boot disk for the instance/s. | `number` |
| boot_disk_type | The GCE disk type. Such as `pd-standard`, `pd-balanced` or `pd-ssd`. | `string` |
| image | The image from which to initialize this disk. | `string` |


## Outputs