resource "google_project_service" "self" {
  for_each = toset(var.services)

  project = var.project
  service = each.key
}

resource "google_compute_instance" "self" {
  count = var.vm_count

  name         = "${var.name}-${count.index}"
  project      = var.project
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.self.id
  }
}
