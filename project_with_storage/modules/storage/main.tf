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
