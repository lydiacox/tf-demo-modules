output "bucket_ids" {
  value = [google_storage_bucket.self.*.id]
}

output "bucket_self_links" {
  value = [google_storage_bucket.self.*.self_link]
}

output "network_id" {
  value = google_compute_network.self.id
}

output "network_self_link" {
  value = google_compute_network.self.self_link
}

output "subnetwork_id" {
  value = google_compute_subnetwork.self.id
}

output "subnetwork_self_link" {
  value = google_compute_subnetwork.self.self_link
}

output "module_micro_deabian"{
  value = module.compute_e2_micro_debian_12.compute_id
}
output "module_standard_centos"{
  value = module.compute_n2_standard_9.compute_id
}
