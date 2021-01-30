#provider "aws" {
#  alias = "first_west"
#}
#
#provider "aws" {
#  alias = "first_east"
#}

data "aws_caller_identity" "first_west" {
  provider = aws.first_west
}

data "aws_caller_identity" "first_east" {
  provider = aws.first_east
}
