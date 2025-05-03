
resource "random_id" "default" {
  byte_length = 2
}

resource "google_folder" "department1" {
  display_name = var.folder_name
  parent       = "organizations/${var.org_id}"
  deletion_protection = false
}

resource "google_project" "my_project-in-a-folder" {
  name                = var.prj_name
  project_id          = "msl-project-${random_id.default.hex}"
  folder_id           = google_folder.department1.folder_id
  deletion_policy     = "DELETE"
  billing_account     = var.bill_acc
  auto_create_network = false
  depends_on          = [ google_folder.department1 ]

}

resource "google_project_service" "prj_services" {
  project = google_project.my_project-in-a-folder.project_id
  service = "compute.googleapis.com"
  depends_on = [ google_project.my_project-in-a-folder ]
}

