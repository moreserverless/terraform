
# All variables set in top level variables.tf
variable "org_id" {
  description = "Run export TF_VAR_org_id=<organization_id>"
  type        = number
}


variable "project_region" {
  description = "to pull in from project root variables.tf"
  type = string
}


variable "prj_name" {
  type = string
}

variable "prj_id" {
  type = string
}

variable "folder_name" {
  type = string
}

variable "bill_acc" {
  description = "run export TF_VAR_bill_acc=<billing_account_id>"
  type = string
}


# variable "prj_resource" {
#   description = "The actual project RESOURCE.  Use this for depends_on"
#   type = string
# }

