
`gcloud auth login`

`export TF_VAR_org_id=<org_id>`

`export TF_VAR_bill_acc=<billing_account_number>`


Terraform files for projects with specific resource needs.

**Note:** the TF files for `project_with_vpc_one_subnet/modules/artifact_reg/` came directly from
[GCP Github terraform-google-artifact-registry](https://github.com/GoogleCloudPlatform/terraform-google-artifact-registry/tree/main) or was "heavily" used for the basis of the file(s).

Terraform Files:
- Project With Storage
- Project with VPC, single subnet and Artifact Repo.
  - Docker is the default format
  