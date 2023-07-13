// # Configuring which module to use.
// terraform {
//   source = "../../modules/lambda-api"
// }

// # Creating local variables to be used in this file.
// locals {
//   global_vars = read_terragrunt_config(find_in_parent_folders())

//   aws_resource_prefix = local.global_vars.locals.aws_resource_prefix
// }

// # Include all settings from the root terragrunt.hcl file.
// include {
//   path = find_in_parent_folders()
// }

// # Passing the variables to the module.
// # Some variables are not being passed here because the module has default values for them.
// inputs = {
//   lambda = {
//     role_name     = "${local.aws_resource_prefix}-backend-lambda-role"
//     function_name = "${local.aws_resource_prefix}-backend-lambda"
//     image_uri     = "<TO_BE_DEFINED>"
//   }
//   api_gateway = {
//     name = "${local.aws_resource_prefix}-backend-api-gateway"
//   }
// }

// Commenting above because with AGES' user we have no permissions to create a Lambda function.
// This is very unfortunate, but at least the modules are ready to be used.