provider "google" {
  region        = var.project_region

}

module "moreserverless_project" {
  source          = "./modules/project/"
  org_id          = var.org_id
  prj_name        = var.project_name
  folder_name     = var.folder_name
  bill_acc        = var.bill_acc
  prj_id          = var.prj_id
  project_region  = var.project_region
}

module "moreserverless_vpc" {
  source            = "./modules/vpc/"
  prj_ip_cidr_range = var.prj_ip_cidr_range
  prj_network_name  = var.prj_network_name
  prj_subnet_name   = var.prj_subnet_name
  project_region    = var.project_region
  prj_id            = module.moreserverless_project.prj_id
  depends_on        = [ module.moreserverless_project ]
}