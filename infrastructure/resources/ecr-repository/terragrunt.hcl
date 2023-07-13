# Configuring which module to use.
terraform {
  source = "../../modules/ecr-repository"
}

# Creating local variables to be used in this file.
locals {
  global_vars = read_terragrunt_config(find_in_parent_folders())

  aws_resource_prefix = local.global_vars.locals.aws_user_name
}

# Include all settings from the root terragrunt.hcl file.
include {
  path = find_in_parent_folders()
}

# Passing the variables to the module.
inputs = {
  ecr = {
    name = "${local.aws_resource_prefix}-images"
  }
}
