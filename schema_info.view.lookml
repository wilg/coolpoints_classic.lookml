- view: schema_info
  fields:

  - dimension: version
    type: int
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: []

