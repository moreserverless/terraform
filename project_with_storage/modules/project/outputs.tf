
output "folder_id" {
    description = "ID of folder created in main.tf"
    value = google_folder.department1.folder_id
}

output "prj_id" {
    description = "ID of this project"
    value = google_project.my_project-in-a-folder.project_id
}


# output "prj_resource" {
#     value = google_project.my_project-in-a-folder
# }