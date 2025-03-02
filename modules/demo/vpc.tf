resource "google_compute_network" "self" {
  name                    = "vpc-${var.name}"
  project                 = var.project
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "self" {
  name          = "sb-${var.name}"
  project       = var.project
  region        = var.region
  network       = google_compute_network.self.id
  ip_cidr_range = var.ip_cidr_range
}
