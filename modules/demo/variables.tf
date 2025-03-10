variable "boot_disk_size" {
  type = number
  description = "The boot disk for the instance/s."
}

variable "boot_disk_type" {
  type = string
  description = "The GCE disk type. Such as `pd-standard`, `pd-balanced` or `pd-ssd`."
}

variable "image" {
  type = string
  description = "The image from which to initialize this disk."
}

variable "ip_cidr_range" {
  type = string
  description = "The range of internal addresses that are owned by the subnetwork."
}

variable "machine_type" {
  type = string
  description = "The machine type to create."
}

variable "name" {
  type = string
  description = "A name to include in the resources."
}

variable "project" {
  type    = string
  description = "The project in which to create the resources"
}

variable "region" {
  type    = string
  description = "The region the resources should be created in."
  validation {
    condition     = can(regex("^(australia-southeast1|australia-southeast2)$", var.region))
    error_message = "Invalid region selected, only allowed regions are: `australia-southeast1`, `australia-southeast2`"
  }
}

variable "sa_roles" {
  type = list(string)
  description = "A list of the roles to assign to the GCE service account."
}

variable "vm_count" {
  type = number
  default  = 1
  description = "The number of VMs to build."
}

variable "zone" {
  type    = string
  description = "The zone the resources should be created in."
}
