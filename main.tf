locals {

    yaml_files_raw = fileset(path.module, "./files/*.yaml")


    yaml_files_set = toset(local.yaml_files_raw)



    #js_files_raw = fileset(path.module, "./files/*.yaml")
#
    #js_files_mod = toset([
    #    for jsFile in local.js_files_raw:
    #    jsFile if jsFile != "../../pacman/game/js/shared.js"
    #])
}



#resource "local_file" "yaml_files" {
#  for_each = local.yaml_files_decoded
#  filename = format("output/%s", each.key)
#  yaml_file = each.value
#} 

module "yaml-test" {
  for_each = local.yaml_files_set
  source = "./modules/configuration-test"
  yaml_file = each.key
}
