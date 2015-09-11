- view: chats
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: creator_id
    type: int
    sql: ${TABLE}.creator_id

  - dimension_group: creator_last_read
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.creator_last_read

  - dimension_group: last_message_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_message_sent

  - dimension: members
    sql: ${TABLE}.members

  - dimension: participant_id
    type: int
    sql: ${TABLE}.participant_id

  - dimension_group: participant_last_read
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.participant_last_read

  - measure: count
    type: count
    drill_fields: [id, chat_messages.count]

