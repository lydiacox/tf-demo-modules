module "compute_e2_micro_debian_12" {
  source = "./modules/compute_instance"

  project      = var.project
  name         = "${var.name}-debian-12"
  image        = "projects/debian-cloud/global/images/family/debian-12"
  size         = var.size
  type         = var.type
  machine_type = "e2-micro"
  zone         = var.zone
  subnetwork   = google_compute_subnetwork.self.id
}

module "compute_n2_standard_9" {
  source = "./modules/compute_instance"

  project      = var.project
  name         = "${var.name}-centos-9"
  image        = "projects/centos-cloud/global/images/family/centos-stream-9"
  size         = 20
  type         = var.type
  machine_type = "n2-standard-4"
  zone         = var.zone
  subnetwork   = google_compute_subnetwork.self.id
}
