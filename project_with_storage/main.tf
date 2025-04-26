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

