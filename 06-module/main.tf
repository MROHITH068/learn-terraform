module "sample1" {
  for_each = var.instances
  source = "./ec2"
  name = each.key
}


variable "instances" {
  default = {
    frontend = {}
    mongodb = {}
    catalogue = {}
    cart = {}
    redis = {}
    user = {}
    mysql = {}
    payment = {}
    rabbitmq = {}
    shipping = {}
  }
}