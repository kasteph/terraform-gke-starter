terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.58.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }

  required_version = "~> 0.14"
}


provider "google" {
  project = var.project_id
  region  = var.region
}


provider "kubernetes" {
  load_config_file = "false"

  host     = module.cluster.cluster_host
  username = var.gke_username
  password = var.gke_password

  client_certificate     = module.cluster.cluster_client_certificate
  client_key             = module.cluster.cluster_client_key
  cluster_ca_certificate = module.cluster.cluster_ca_certificate
}

module "cluster" {
  source = "./modules/cluster"

  project_id = var.project_id
  region     = var.region

  vpc_name    = module.networking.vpc_name
  subnet_name = module.networking.subnet_name

  depends_on = [module.networking]
}

module "networking" {
  source = "./modules/networking"

  project_id = var.project_id
  region     = var.region
}
