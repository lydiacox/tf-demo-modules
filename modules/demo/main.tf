resource "google_compute_instance" "self" {
  name                      = "vm-${var.name}"
  project                   = var.project
  machine_type              = var.machine_type
  zone                      = var.zone
  allow_stopping_for_update = true

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

  service_account {
    email  = google_service_account.self.email
    scopes = ["cloud-platform"]
  }
}

resource "google_storage_bucket" "self" {
  count = var.bk_count

  name                        = "bk-${var.name}-${count.index}"
  location                    = var.region
  project                     = var.project
  uniform_bucket_level_access = true
}
