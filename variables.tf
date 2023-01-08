variable "aws_access_key" {
    type = string 
    description = "AWS Access Key"
    sensitive = true 
}

variable "aws_secret_key" {
    type = string 
    description = "AWS Secret Key"
    sensitive = true 
}

variable "aws_region" {
    type = string
    description = "Region for AWS resources"
    default = "us-east-1"
}

variable "cidr_block" {
    type = string
    description = "Base CIDR block for VPC"
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "aws_subnet1_cidr_block" {
    type = string
    description = "CIDR blosk for subnet1 in VPC"
    default = "10.0.0.0/24"
}

variable "map_public_ip_on_launch" {
    type = bool
    description = "Map a public IP address for Subnet instances"
    default = true
}

variable "instance_type" {
    type = string
    description = "type for EC2 instance"
    default = "t2.micro"
}

variable "company" {
    type = string
    description = "Company name for resource tagging"
    default = "Globomantics"
}

variable "project" {
    type = string
    description = "Project name for resource tagging"
}

variable "billing_code" {
    type = string
    description = "Billing code for resource tagging"
}
