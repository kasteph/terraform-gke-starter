output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "cluster_name" {
  value       = module.cluster.cluster_name
  description = "GKE Cluster Name"
}

output "cluster_host" {
  value       = module.cluster.cluster_host
  description = "GKE Cluster Host"
}
