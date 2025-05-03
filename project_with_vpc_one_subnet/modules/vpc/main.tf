resource "google_compute_subnetwork" "prj-subnet" {
  name          = var.prj_subnet_name
  ip_cidr_range = var.prj_ip_cidr_range
  region        = var.project_region
  project       = var.prj_id
  network       = google_compute_network.prj-network.id
  
}

resource "google_compute_network" "prj-network" {
  name                    = var.prj_network_name
  project                 = var.prj_id
  auto_create_subnetworks = false
}