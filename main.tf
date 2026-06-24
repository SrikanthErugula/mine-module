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

resource "aws_insta" "this" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids
  tags = var.tags

}