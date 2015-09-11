- view: donations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: charity_id
    type: int
    sql: ${TABLE}.charity_id

  - dimension: complete
    type: yesno
    sql: ${TABLE}.complete

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: dollars
    type: int
    sql: ${TABLE}.dollars

  - dimension: source
    sql: ${TABLE}.source

  - dimension: status
    sql: ${TABLE}.status

  - dimension: tx
    sql: ${TABLE}.tx

  - dimension: txn_id
    sql: ${TABLE}.txn_id

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.id, users.firstname, users.lastname]

