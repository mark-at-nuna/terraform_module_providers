provider "aws" {
  alias = "first_west"
}

provider "aws" {
  alias = "first_east"
}

#module "second" {
#  providers = {
#    aws.second_west = aws.first_west
#    aws.second_east = aws.first_east
#  }
#  source = "../second_module"
#}
