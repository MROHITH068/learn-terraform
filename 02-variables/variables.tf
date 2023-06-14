variable "sample" {
  default = 100
}

output "sample" {
  value = var.sample
}

## Sometime if variable/any reference with combination of some other Strings, We must access those in ${}

output "sample-ext" {
  value = "Value of Sample - ${var.sample}"
}