- view: teams_users
  fields:

  - dimension: team_id
    type: int
    # hidden: true
    sql: ${TABLE}.team_id

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [users.id, users.firstname, users.lastname, teams.id, teams.name]

