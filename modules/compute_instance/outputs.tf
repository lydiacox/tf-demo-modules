output "compute_id" {
  value = google_compute_instance.self.id
}

output "sa_id" {
  value = google_service_account.self.id
}