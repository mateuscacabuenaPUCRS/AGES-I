// # Configuring which module to use.
// terraform {
//   source = "../../modules/ec2-instance"
// }

// # Creating local variables to be used in this file.
// locals {
//   global_vars = read_terragrunt_config(find_in_parent_folders())

//   aws_region          = local.global_vars.locals.aws_region
//   aws_resource_prefix = local.global_vars.locals.aws_resource_prefix
// }

// # Include all settings from the root terragrunt.hcl file.
// include {
//   path = find_in_parent_folders()
// }

// # Passing the variables to the module.
// # Some variables are not being passed here because the module has default values for them.
// inputs = {
//   ec2 = {
//     name = "${local.aws_resource_prefix}-ec2"
//   }
//   network = {
//     subnet_id          = get_env("TERRAFORM_EC2_SUBNET_ID", "subnet-02ead3895c0861b19") # Replace with your subnet ID.
//     security_group_ids = [get_env("TERRAFORM_EC2_SECURITY_GROUP_ID", "sg-0fc1369e0e10bdc80")] # Replace with your security groups IDs.
//   }
// }

// Commenting above because with AGES' user we have no permissions to create an EC2 instance.
// This is very unfortunate, but at least the modules are ready to be used.
