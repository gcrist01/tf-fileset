resource "local_file" "yaml_file_debug" {
  for_each = local.yaml_obj
  filename = format("output/%s", each.key)
  #content = yamlencode(each.value)
  content = each.value.location

} 
