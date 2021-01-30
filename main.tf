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
  source = "./local_modules/first_module"
  depends_on = [null_resource.dependency]
}
