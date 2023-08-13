terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# second region
# provider "aws" {
#   alias = "west"
#   region = "us-west-2"
# }

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}


# declaration of modules 
module "ktrzaskoma_webserver" {
  source          = "../modules/webserver"
  vpc_id          = aws_vpc.main.id
  cidr_block      = "10.0.0.0/16"
  webserver_name  = "ktrzaskoma"
  ami             = "ami-053b0d53c279acc90"
  instance_type   = "t2.micro"
}

# module "ktrzaskoma_webserver_west" {
#   source          = "../modules/webserver"
#   providers = {
#     aws = aws.west
#   }
#   vpc_id          = aws_vpc.main.id
#   cidr_block      = "10.0.0.0/16"
#   webserver_name  = "ktrzaskoma-west"
#   ami             = "ami-053b0d53c279acc90"
#   instance_type   = "t2.micro"
# }

/*
resource "aws_elb" "main" {
  instances = module.ktrzaskoma_webserver.instance.id
  
}
*/
