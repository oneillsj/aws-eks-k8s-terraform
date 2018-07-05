#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-soneill"
  type    = "string"
}

# Needed if AWS is over utilized in EKS in the first 2 default AZ's
variable "availability_zones" {
  default = ["us-east-1c", "us-east-1d", "us-east-1e"]
}

#variable "aws_access_key" {
#  default = "access"
#}
#
#variable "aws_secret_key" {
#  default = "secret"
#}
