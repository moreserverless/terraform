resource "google_artifact_registry_repository" "repo" {
  provider = google-beta

  repository_id = var.repository_id
  location      = var.location
  format        = var.format
  project       = var.prj_id
  mode          = var.mode
  description   = var.description
  labels        = var.labels
  depends_on = [ google_project_service.artfact_reg_services ]
}

resource "google_project_service" "artfact_reg_services" {
  project = var.prj_id
  service = "artifactregistry.googleapis.com"
  disable_dependent_services=true
}
