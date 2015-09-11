- view: gesture_types
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: action
    sql: ${TABLE}.action

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.enabled

  - dimension: long_name
    sql: ${TABLE}.long_name

  - dimension: sentence_description
    sql: ${TABLE}.sentence_description

  - dimension: short_name
    sql: ${TABLE}.short_name

  - dimension: threshold
    type: int
    sql: ${TABLE}.threshold

  - dimension: value
    type: int
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: [id, short_name, long_name, gestures.count]

