provider "aws" {
  alias = "second_west"
}

provider "aws" {
  alias = "second_east"
}

data "aws_caller_identity" "second_west" {
  provider = aws.second_west
}

data "aws_caller_identity" "second_east" {
  provider = aws.second_east
}
