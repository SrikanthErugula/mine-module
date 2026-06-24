# variable "vpc_cidr" {
#   type = string
#   # default = "" ikkada idhi pettakapothe adi mandatory avuthundhi
#   description = "Please provide the vpc CIDR RANGE"
#  }

#  variable "project_name" {
#    type = string

#  }

#  variable "environment" {
#    type = string

#  }

#  # above both like project name and environment use enti ante common tags anevi konni
#  # manaki understand purpose ki create chesukovahu....

# #VPC
#  variable "vpc_tags" {
#     type = map
#     default = {}
# }




#practice 24/06/26

variable "ami_id" {
  type = string
  description = "this is for AMID"
}

variable "instance_type" {
  type = string
  description = "this is for instance id"
}

variable "sg_ids" {
  type = list
}

variable "tags" {
  type = map
  default = {}
}