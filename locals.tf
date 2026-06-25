# locals {
# common_tags = {
#         Project = var.project_name # Project first letter caps vunte nice ani
#         Environment = var.environment
#         Terraform = true
#     }
#     common_name_suffix = "${var.project_name}-${var.environment}" # roboshop-dev
#     #az_names = slice(data.aws_availability_zones.available.names, 0, 2 )
#   }



# Practice 24/06/26

#VPC
locals {
  common_tags = {
    Project = var.project_name
    Env = var.env
    Terraform = true
  }
  common_name_suffix = "${var.project_name}-${var.env}"

}