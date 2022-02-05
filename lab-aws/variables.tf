variable "ami_us-east-1" {
    type = map
    default = {
        "ubuntu_20-04" = "ami-04505e74c0741db8d"
        "amazon_linux_2" = "ami-0a8b4cd432b1c3063"
    }
}

variable "ami_us-east-2" {
    type = map
    default = {
        "ubuntu_20-04" = "ami-0fb653ca2d3203ac1"
        "amazon_linux_2" = "ami-0231217be14a6f3ba"
    }
}

variable "allowed_cidr" {
    type = list
    default = ["1.1.1.1/32","8.8.8.8/32","0.0.0.0/0"]
}

variable "project_name" {
    default = "Terraform_Learning"
}

variable "counter" {
    default = 2
}