
## Creates a Project within a Project Folder with Storage Buckets

This terraform template creates the following items

1. Project Folder
   - set folder name in `project.tfvars` file
2. Project
   - set project name in `project.tfvars` file
   - depends on project folder creation
3. Storage Buckets
   - Terraform remote state bucket
     - name = `RANDOM_ID-terraform-remote-backend`
     - depends on project creation
   - Project storage bucket
     - set bucket name in `projects.tfvars` file
     - depends on project creation

Requires the following environment variables to be set:
- export TF_VAR_org_id=<organization_id>
- export TF_VAR_bill_acc=<billing_account_number>
  
**Note:** These values should be kept secret and not commited to version control

Run the following commands:

`terraform plan -var-file="project.tfvars`

`terraform apply -var-file="project.tfvars`

`terraform destroy -var-file="project.tfvars`