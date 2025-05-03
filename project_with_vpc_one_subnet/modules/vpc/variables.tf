variable "prj_ip_cidr_range"  {
    description = "IP CIDR range for this project"
    type        = string
}

variable "prj_network_name" {
  description = "Network name for this project"
  type        = string
}

variable "project_region" {
    description = "Region for this project and network - set in top level main"
    type        = string
}

variable "prj_subnet_name" {
    description = "Name for subnet in this project"
    type        = string
}

variable "prj_id" {
    description = "Project ID from modules/project"
    type        = string
}