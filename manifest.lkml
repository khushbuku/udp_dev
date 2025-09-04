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

constant: format {
  value: "topojson"
  export: override_optional
}

constant: feature_key {
  value: "BEL_adm1"
  export: override_optional
}

constant: property_key {
  value: "HASC_1"
  export: override_optional
}

constant: property_label_key {
  value: "NAME_1"
  export: override_optional
}


# map_layer: my_neighborhood_layer {
#   # file: "//udp_dev/maps/output.json"
#   file: "@{map_layer}"
#   format: "@{format}"
#   feature_key: "@{feature_key}"
#   property_key: "@{property_key}"
#   property_label_key: "@{property_label_key}"
# }

# map_layer: my_neighborhood_layer {
#   file: "//udp_dev/maps/output.json"
#   format: topojson
#   feature_key: "BEL_adm1"
#   property_key: "HASC_1"
#   property_label_key: "NAME_1"
# }
