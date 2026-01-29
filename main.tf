resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
   enable_dns_hostnames = true # see below for deatiled

tags =  merge(
     var.vpc_tags, 
    local.common_tags, # MAP 1..# see below for deatils
   # var.vpc_tags, # map 1 # for user purpose ki 
    # before {} enni vunna adhi map 1 kidha ki vastai
    {
        Name = local.common_name_suffix #  map 2
    }
)
}