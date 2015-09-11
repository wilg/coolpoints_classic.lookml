- view: friendships
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: friend_id
    type: int
    sql: ${TABLE}.friend_id

  - dimension: gesture_points
    type: int
    sql: ${TABLE}.gesture_points

  - dimension: status
    type: int
    sql: ${TABLE}.status

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.id, users.firstname, users.lastname]

