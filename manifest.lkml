project_name: "udp_dev"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

# local_dependency: {
#   project: "rchavan_test"
# }

constant: map_layer {
  value: "//udp_dev/maps/output.json"
  export: override_optional
}
