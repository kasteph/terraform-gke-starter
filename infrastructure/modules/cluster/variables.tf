# Required Variables

variable "project_id" {
  description = "provider project id"
}

variable "region" {
  description = "provider region"
}

variable "vpc_name" {
  description = "The name of the VPC network."
}

variable "subnet_name" {
  description = "The name of the subnet."
}

# Optional Variables

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 3
  description = "number of gke nodes"
}
