- view: settings
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: closed
    type: int
    sql: ${TABLE}.closed

  - dimension: closure_reason
    sql: ${TABLE}.closure_reason

  - dimension: contest_recent_wins_count
    type: int
    sql: ${TABLE}.contest_recent_wins_count

  - dimension: featured_contest
    type: int
    sql: ${TABLE}.featured_contest

  - dimension: server_timezone
    type: int
    sql: ${TABLE}.server_timezone

  - measure: count
    type: count
    drill_fields: [id]

