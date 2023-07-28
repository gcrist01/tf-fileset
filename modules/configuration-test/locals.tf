locals {
  yaml_obj = yamldecode(file("${var.yaml_file}"))
}
