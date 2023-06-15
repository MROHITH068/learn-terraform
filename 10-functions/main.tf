variable "class" {
  default = "devops"
}

## Print the same in capital letters

output "classes" {
  value = upper(var.class)
}