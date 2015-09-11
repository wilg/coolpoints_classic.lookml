- view: survey_answers
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: answer
    sql: ${TABLE}.answer

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: survey_question_id
    type: int
    # hidden: true
    sql: ${TABLE}.survey_question_id

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.id, users.firstname, users.lastname, survey_questions.id]

