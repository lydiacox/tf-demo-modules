variable "name" {
  type    = string
  default = "demo-module"
}

variable "project" {
  type    = string
  default = "programmable-demo-module-2025"
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

variable "size" {
  type    = number
  default = 10
}

variable "type" {
  type    = string
  default = "pd-balanced"
}
