
resource "random_id" "default" {
  byte_length = 2
}

resource "google_folder" "department1" {
  display_name = var.folder_name
  parent       = "organizations/${var.org_id}"
  deletion_protection = false
}

resource "google_project" "my_project-in-a-folder" {
  name       = var.prj_name
  project_id = "tf-project-${random_id.default.hex}"
  folder_id  = google_folder.department1.folder_id
  deletion_policy = "DELETE"
  billing_account = var.bill_acc

  depends_on = [ google_folder.department1 ]

}

resource "google_project_service" "my_projec_storage_service" {
  project = google_project.my_project-in-a-folder.project_id
  service = "storage.googleapis.com"

  
  disable_on_destroy = true
}

# resource "google_storage_bucket" "terraform-state" {
#   name     = "${random_id.default.hex}-terraform-remote-backend"
#   location = var.project_region
#   project = google_project.my_project-in-a-folder.project_id
#   force_destroy               = false
#   public_access_prevention    = "enforced"
#   uniform_bucket_level_access = true

#   versioning {
#     enabled = true
#   }

#   depends_on = [ google_project.my_project-in-a-folder ]
# }

# resource "google_storage_bucket" "project-bucket" {
#   name = "prj-bucket-${random_id.default.hex}"
#   location = var.project_region
#   project = google_project.my_project-in-a-folder.project_id
#   force_destroy               = false
#   public_access_prevention    = "enforced"
#   uniform_bucket_level_access = true

#   versioning {
#     enabled = true
#   }

#   depends_on = [ google_project.my_project-in-a-folder ]
# }

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
      bucket = "${google_storage_bucket.default.name}"
    }
  }
  EOT
}
*/