- view: descriptizzles
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: value
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: [id, descriptizzle_votes.count]

