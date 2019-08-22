# Terragrunt will copy the Terraform configurations specified by the source parameter, along with any files in the
# working directory, into a temporary folder, and execute your Terraform commands in that folder.
terraform {
  source = "git::ssh://git@github.com/stognera/terraformgrunt.git//modules//azure-lb-multi-vms"
  #source = "../../../modules//asg-elb-service"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
inputs = {
  resource_group = "adam-test"
  location       = "East US"
  storage_name   = "test-storage"
}
