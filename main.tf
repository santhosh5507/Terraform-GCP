provider "google" {
  # credentials = "./login.json"
  # region      = "us-east4"
}

module "project" {
  source = "./module/projects"

  # folder1-id = "shared-services12345" # provide folder1 id

  host-project-name = "regen-svpc-host"
  host-project-id = "regen-svpc-host12345"
/*
  service-project1-name = "image-project"
  service-project1-id = "image-project12345"

  service-project2-name = "mgmt-project"
  service-project2-id = "mgmt-project12345"

  folder2-id = "management12345" # provide folder2 id
  
  log-project-name = "log-sink-project"
  log-project-id = "log-sink-project12345"

  billing-project-name = "billing-export-project"
  billing-project-id = "billing-export-project12345"

  monitoring-project-name = "std-monitoring-project"
  monitoring-project-id = "std-monitoring-project12345"
*/ 
}
