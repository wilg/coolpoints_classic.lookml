- view: help_categories
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: title
    sql: ${TABLE}.title

  - measure: count
    type: count
    drill_fields: [id]

