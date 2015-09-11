- view: survey_questions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: question
    sql: ${TABLE}.question

  - measure: count
    type: count
    drill_fields: [id, survey_answers.count]

