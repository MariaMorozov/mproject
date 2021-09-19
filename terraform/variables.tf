##################################################################################
# PROVIDER VARIABLES
###################################################################################
#variable "access_key" {}
#variable "secret_key" {}

variable "region" {
  description = "AWS region for VMs"
  default = "us-east-1"
}

variable "pem_path" {
  type = "string"
  default = "c:\\Users\\Gena\\mariaINT2020.pem"
}

variable "git_branch" {
  type = "string"
  default = "main"
}

variable "prefix" {
  type = "string"
  default = ""
}