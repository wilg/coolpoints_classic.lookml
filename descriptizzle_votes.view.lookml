- view: descriptizzle_votes
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: descriptizzle_id
    type: int
    # hidden: true
    sql: ${TABLE}.descriptizzle_id

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: voter_id
    type: int
    sql: ${TABLE}.voter_id

  - measure: count
    type: count
    drill_fields: [id, users.id, users.firstname, users.lastname, descriptizzles.id]

