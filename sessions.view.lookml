- view: sessions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: data
    sql: ${TABLE}.data

  - dimension: sessid
    sql: ${TABLE}.sessid

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_on

  - measure: count
    type: count
    drill_fields: [id]

