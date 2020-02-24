# Under Folder1 - creating a shared vpc host project which owns the vpc network
resource "google_project" "svpc-host-project" {
  name       = var.host-project-name #"sharedvpc-host-project"
  project_id = var.host-project-id #"sharedvpc-host-project12345"
  # # org_id     = var.org_id -organization id - this is optional. While creating a project either org_id or folder_id only 1 attribute should be given
  folder_id  = var.folder1-id #google_folder.gcp_folder1.name # this project will be created under gcp_folder1
  billing_account = "1234-5678-9012" # billing account id - this is optional
  auto_create_network = false # disabling the default network creation
  skip_delete = false # This is optional. If true, the Terraform resource can be deleted without deleting the Project via the Google API.
}

# Under Folder1 - creating a service project1 which uses shared vpc network from the host project
resource "google_project" "service-project1" {
  name       = var.service-project1-name # "image-repo-project"
  project_id = var.service-project1-id #"image-repo-project12345"
  # # org_id     = var.org_id -organization id - this is optional. While creating a project either org_id or folder_id only 1 attribute should be given
  folder_id  = var.folder1-id # this project will be created under gcp_folder1
  billing_account = "1234-5678-9012" # billing account id - this is optional
  auto_create_network = false # disabling the default network creation
  skip_delete = false # This is optional. If true, the Terraform resource can be deleted without deleting the Project via the Google API.
}

# Under Folder1 - creating a service project2 which uses shared vpc network from the host project
resource "google_project" "service-project2" {
  name       = var.service-project2-name # "management-project"
  project_id = var.service-project2-id # "management-project12345"
  # # org_id     = var.org_id -organization id - this is optional. While creating a project either org_id or folder_id only 1 attribute should be given
  folder_id  = var.folder1-id # this project will be created under gcp_folder1
  billing_account = "1234-5678-9012" # billing account id - this is optional
  auto_create_network = false # disabling the default network creation
  skip_delete = false # This is optional. If true, the Terraform resource can be deleted without deleting the Project via the Google API.
}

# Under Folder2 - creating a Log sink project which will be used to store logs from all the projects
resource "google_project" "log-project" {
  name       = var.log-project-name #"sharedvpc-host-project"
  project_id = var.log-project-id #"sharedvpc-host-project12345"
  # # org_id     = var.org_id -organization id - this is optional. While creating a project either org_id or folder_id only 1 attribute should be given
  folder_id  = var.folder2-id #google_folder.gcp_folder1.name # this project will be created under gcp_folder1
  billing_account = "1234-5678-9012" # billing account id - this is optional
  auto_create_network = false # disabling the default network creation
  skip_delete = false # This is optional. If true, the Terraform resource can be deleted without deleting the Project via the Google API.
}

# Under Folder2 - creating a Billing export project which will be used to store billing export data from all the projects
resource "google_project" "billing-project" {
  name       = var.billing-project-name #"sharedvpc-host-project"
  project_id = var.billing-project-id #"sharedvpc-host-project12345"
  # # org_id     = var.org_id -organization id - this is optional. While creating a project either org_id or folder_id only 1 attribute should be given
  folder_id  = var.folder2-id #google_folder.gcp_folder1.name # this project will be created under gcp_folder1
  billing_account = "1234-5678-9012" # billing account id - this is optional
  auto_create_network = false # disabling the default network creation
  skip_delete = false # This is optional. If true, the Terraform resource can be deleted without deleting the Project via the Google API.
}

# Under Folder2 - creating a Stackdriver monitoring project which will be used to monitor resources from all the projects 
resource "google_project" "monitoring-project" {
  name       = var.monitoring-project-name #"sharedvpc-host-project"
  project_id = var.monitoring-project-id #"sharedvpc-host-project12345"
  # # org_id     = var.org_id -organization id - this is optional. While creating a project either org_id or folder_id only 1 attribute should be given
  folder_id  = var.folder2-id #google_folder.gcp_folder1.name # this project will be created under gcp_folder1
  billing_account = "1234-5678-9012" # billing account id - this is optional
  auto_create_network = false # disabling the default network creation
  skip_delete = false # This is optional. If true, the Terraform resource can be deleted without deleting the Project via the Google API.
}

