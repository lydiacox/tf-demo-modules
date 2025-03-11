module "compute_micro_debian_12" {
  source = "./modules/compute_instance"

  project = var.project
  name = "${var.name}-debian-12"
  image = "projects/debian-cloud/global/images/family/debian-12"
  size = var.size
  type = var.type
  machine_type = "e2-micro"
  zone = var.zone
  subnetwork = google_compute_subnetwork.self.id
}
