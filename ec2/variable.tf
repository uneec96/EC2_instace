variable "ami" {
    default = "ami-00bf4ae5a7909786c"
}

variable "instance_tags" {
  type = list
  default = ["Terraform-1", "Terraform-2"]
}

variable "instance_type" {
    default = "t2.micro"  
}

variable "instance_count" {
  default = "2"
}
