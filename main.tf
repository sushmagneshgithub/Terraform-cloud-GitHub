terraform {
    required_version = "~> 1.3.0" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-west-1" 
        #profile = "default"
	}

resource "aws_instance" "sushma" {
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t2.micro"
	tags = {
		"name" = "necode"
	}
}
