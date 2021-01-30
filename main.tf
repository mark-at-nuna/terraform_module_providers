provider aws {
  alias = "root_west"
  region = "us-west-1"
}

provider aws {
  alias  = "root_east"
  region = "us-east-1"
}

resource "null_resource" "dependency" {}

module "first" {
  providers = {
    aws.first_west = aws.root_west
    aws.first_east = aws.root_east
  }
  source = "./local_modules/first_module"
  depends_on = [null_resource.dependency]
}
