# resource "aws_vpc" "main" {
#   cidr_block       = var.vpc_cidr
#    instance_tenancy = "default"
#    enable_dns_hostnames = true # see below for deatiled

# tags =  merge(
#      var.vpc_tags, 
#     local.common_tags, # MAP 1..# see below for deatils
#    # var.vpc_tags, # map 1 # for user purpose ki 
#     # before {} enni vunna adhi map 1 kidha ki vastai
#     {
#         Name = local.common_name_suffix #  map 2
#     }
# )
# }



# practice 24/06/27

# resource "aws_instance" "this" {
#   ami = var.ami_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = var.sg_ids
#   tags = var.tags

# }

# resource "aws_instance" "main" {
#   ami = var.ami_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = var.sg_ids
#   tags = {
#     Name = "tf-tags"
#   }
# }


# VPC creation

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc 

resource "aws_vpc" "main" {
  cidr_block       =  var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true 
  tags = merge(
    local.common_tags,
    var.vpc_tags,
    {
        Name = local.common_name_suffix
    }
  )
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    local.common_tags,
    var.igw_tags,
    {
        Name = local.common_name_suffix
    }
  )
}

# resource "aws_subnet" "pub_sub_one" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"

#  tags = merge(
#     local.common_tags,
#     var.igw_tags,
#     {
#         Name = local.common_name_suffix
#     }
#   )
# }



