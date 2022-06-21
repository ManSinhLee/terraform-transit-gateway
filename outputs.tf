output "amz_linux_2" {
  value = data.aws_ami.amz_linux_2.id
}

output "list_azs" {
  value = data.aws_availability_zones.available.names
}

output "count_azs" {
  value = length(data.aws_availability_zones.available.names)
}