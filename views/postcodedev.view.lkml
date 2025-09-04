view: postcodedev {
  derived_table: {
    indexes: ["hasc_code"]
    sql:
      SELECT 'BE.AN' AS hasc_code, 1200 AS population, 'Antwerp' AS province_name UNION ALL
      SELECT 'BE.BU' AS hasc_code, 1208 AS population, 'Brussels' AS province_name UNION ALL
      SELECT 'BE.OV' AS hasc_code, 1561 AS population, 'East Flanders' AS province_name UNION ALL
      SELECT 'BE.VB' AS hasc_code, 1197 AS population, 'Flemish Brabant' AS province_name UNION ALL
      SELECT 'BE.HT' AS hasc_code, 1344 AS population, 'Hainaut' AS province_name UNION ALL
      SELECT 'BE.LG' AS hasc_code, 1109 AS population, 'Liege' AS province_name UNION ALL
      SELECT 'BE.LI' AS hasc_code, 874 AS population, 'Limburg' AS province_name UNION ALL
      SELECT 'BE.LX' AS hasc_code, 284 AS population, 'Luxembourg' AS province_name UNION ALL
      SELECT 'BE.NA' AS hasc_code, 519 AS population, 'Namur' AS province_name UNION ALL
      SELECT 'BE.BW' AS hasc_code, 403 AS population, 'Walloon Brabant' AS province_name UNION ALL
      SELECT 'BE.WV' AS hasc_code, 1222 AS population, 'West Flanders' AS province_name
      ;;
    persist_for: "24 hours"
  }

  # 维度定义
  dimension: hasc_code {
    primary_key: yes
    type: string
    sql: ${TABLE}.hasc_code ;;
    description: " HASC code"
    map_layer_name:my_neighborhood_layer
  }

  dimension: province_name {
    type: string
    sql: ${TABLE}.province_name ;;
  }

  # 度量定义
  measure: total_population {
    type: sum
    sql: ${TABLE}.population ;;
    value_format_name: decimal_0 # 可选的格式化
    label: "总人口 (千人)"
  }
}
