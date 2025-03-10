module "demo" {
  source = "./modules/demo"

  project = "programmable-demo-module-2025"
  vm_count       = 3
  name           = "programmable-mod-demo"
  ip_cidr_range  = "10.128.0.0/24"
  machine_type   = "e2-micro"
  boot_disk_size = 10
  boot_disk_type = "pd-balanced"
  image          = "projects/debian-cloud/global/images/family/debian-12"
  zone           = "australia-southeast2-b"
  region         = "australia-southeast2"
  # zone           = "europe-west1-b"
  # region         = "europe-west1"

  sa_roles = [
    "roles/compute.instanceAdmin",
    "roles/storage.admin",
  ]
}
