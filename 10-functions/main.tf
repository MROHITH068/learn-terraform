variable "class" {
  default = "devops"
}

## Print the same in capital letters

output "classes" {
  value = upper(var.class)
}

variable "fruits" {
  default = ["Mango","Apple"]
}

output "fruit_count" {
  value = length(var.fruits)
}

variable "classes" {
  default = {
    devops = {
      name = "devops"
      topics = ["jenkins","docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "aws_topics" {
  value = lookup(lookup(var.classes,"aws",null),"topics",null)
}