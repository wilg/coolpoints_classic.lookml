- view: teams
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: captain_id
    type: int
    sql: ${TABLE}.captain_id

  - dimension: kind
    sql: ${TABLE}.kind

  - dimension: name
    sql: ${TABLE}.name

  - dimension: subtitle
    sql: ${TABLE}.subtitle

  - measure: count
    type: count
    drill_fields: [id, name, teams_users.count]

