resource "google_storage_bucket" "terraform-state" {
  name     = "${var.ran_id}-terraform-remote-backend"
  location = var.project_region
  project                     = var.prj_id
  force_destroy               = false
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

}

#
# Uncomment `resource "local_file" "default" {...}` module.check  { ... }
# After running `terraform apply` run the following command on local system:
# `terraform init -migrate-state`
#
# Ref: https://cloud.google.com/docs/terraform/resource-management/store-state
#
/*
resource "local_file" "default" {
  file_permission = "0644"
  filename        = "${path.module}/backend.tf"

  # You can store the template in a file and use the templatefile function for
  # more modularity, if you prefer, instead of storing the template inline as
  # we do here.
  content = <<-EOT
  terraform {
    backend "gcs" {
      bucket = "${google_storage_bucket.terraform-state.name}"
    }
  }
  EOT
}
*/


resource "google_storage_bucket" "project-bucket" {
  name = "prj-bucket-${var.ran_id}"
  location = var.project_region
  project = var.prj_id
  force_destroy               = false
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

}
