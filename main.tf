
terraform {
    required_providers {
#         aws = {
#           source = "registry/plugins/aws"
#           version = "3.73.0"
#         }
        ah = {
          source = "registry/plugins/ah"
          version = "0.2.0"
        }

        # external = {
        #   source = "hashicorp/external"
        #   version = "2.2.0"
        # }
        # random = {
        #   source = "hashicorp/random"
        #   version = "3.1.0"
        # }                        

    }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}
# provider "ah" {
#     # regison  = "us-east-1"
#   # Configuration options
# }

# provider "external" {
#   # Configuration options
# }
# provider "random" {
#   # Configuration options
# }
resource "aws_instance" "vm-web" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"

  tags = {
    Name = "ismaeel-testing-providerssss"
    Env = "dev"
  }
}












# terraform {
#   required_providers {
#     cloudeos = {
#       source = "aristanetworks/cloudeos"
#       version = "1.1.3"
#     }
#   }
# }

# provider "cloudeos" {
#   # Configuration options
# }






# terraform {
#   required_providers {
#     null = {
#       source = "hashicorp/null"
#       version = "3.1.0"
#     }
#   }
# }

# provider "null" {
#   # Configuration options
# }








#     random = {
#       source = "hashicorp/random"
#       version = "3.1.0"
#     }

# resource "azurerm_resource_group" "tacos" {
#     name = "tacotest"
#     location = "East US"
#     provider = azurerm.malibu
# }


# terraform {
#   required_providers {
#     ah = {
#       source = "advancedhosting/ah"
#       version = "0.2.0"
#     }
#     aws = {
#       source = "hashicorp/aws"
#       version = "3.73.0"
#     }
#     random = {
#       source = "hashicorp/random"
#       version = "3.1.0"
#     }
      

#   }
# }



# provider "ah" {
#     # region  = "us-east-1"
#   # Configuration options
# }

# provider "aws" {
#   # Configuration options
# }


# provider "random" {
#   # Configuration options
# }

# resource "aws_instance" "vm-web" {
#   ami           = "ami-08e4e35cccc6189f4"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "ismaeel-testing-providerss"
#     Env = "dev"
#   }
# }



