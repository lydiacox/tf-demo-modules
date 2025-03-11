variable "name" {
  type    = string
  default = "programmable-demo"
}

variable "project" {
  type    = string
  default = "programmable-demo-2025"
}

variable "region" {
  type    = string
  default = "australia-southeast2"
  validation {
    condition     = can(regex("^(australia-southeast1|australia-southeast2)$", var.region))
    error_message = "Invalid region selected, only allowed regions are: `australia-southeast1`, `australia-southeast2`"
  }
}

variable "zone" {
  type    = string
  default = "australia-southeast2-b"
}

variable "image" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "name" {
  type = string
}

variable "size" {
  type = number
  default = 10
}

variable "subnetwork" {
  type = string
}

variable "type" {
  type = string
  default = "pd-balanced"
}
