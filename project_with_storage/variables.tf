
variable "org_id" {
  description = "Run export TF_VAR_org_id=<organization_id>"
  type        = number
}

variable "bill_acc" {
  description = "Run export TF_VAR_bill_acc=<billing_account_number>"
  type        = string
}

variable "project_region" {
    description = "Region where project is located"
    type = string
    default = "us-central1"
}

variable "project_zone" {
    description = "Zone where project is located"
    type = string
    default = "us-central1-a"
}

variable "prj_id" {
  description = "Project ID once it is created"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
  # default     = "moreserverless-project"
}

variable "folder_name" {
  description = "Folder name that contains project prj_name"
  type        = string
  # default     = "moreserverless-folder"
}
