variable "vpc_cidr" {
  type = string
  # default = "" ikkada idhi pettakapothe adi mandatory avuthundhi
  description = "Please provide the vpc CIDR RANGE"
 }

 variable "project_name" {
   type = string

 }

 variable "environment" {
   type = string

 }

 # above both like project name and environment use enti ante common tags anevi konni
 # manaki understand purpose ki create chesukovahu....

#VPC
 variable "vpc_tags" {
    type = map
    default = {}
}
