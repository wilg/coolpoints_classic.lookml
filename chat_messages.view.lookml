- view: chat_messages
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: body
    sql: ${TABLE}.body

  - dimension: chat_id
    type: int
    # hidden: true
    sql: ${TABLE}.chat_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, chats.id, users.id, users.firstname, users.lastname]

