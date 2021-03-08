output "cluster_name" {
  description = "GKE cluster name."
  value       = google_container_cluster.primary.name
}

output "cluster_host" {
  description = "GKE cluster host."
  value       = google_container_cluster.primary.endpoint
}

output "cluster_client_certificate" {
  description = "GKE cluster client certificate."
  value       = google_container_cluster.primary.master_auth.0.client_certificate
}

output "cluster_client_key" {
  description = "GKE cluster client key."
  value       = google_container_cluster.primary.master_auth.0.client_key
}

output "cluster_ca_certificate" {
  description = "GKE cluster CA certificate."
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}
