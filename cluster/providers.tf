#
# Provider Configuration
#

#provider "aws" {
#  region = "us-east-1"
#}


provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

# Not used AZ variables statically defined in variables.tf
# data "aws_availability_zones" "available" {}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}
