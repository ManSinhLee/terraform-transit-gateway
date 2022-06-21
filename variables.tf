variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "my_address" {
  type    = string
  default = "{YOUR_IP_ADDRESS}/32"
}

variable "office_address" {
  type    = string
  default = "{YOUR_OFFICE_ADDRESS}/32"
}