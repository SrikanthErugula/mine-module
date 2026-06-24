# output "vpc_give_id" {
#   value = aws_vpc.main.id # see in notes
# }



#practice 24/06/26


output "pub_it" {
  value = aws_instance.main.public_ip
}

output "pvt_it" {
  value = aws_instance.main.private_ip
}