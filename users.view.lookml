- view: users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: about_me
    sql: ${TABLE}.about_me

  - dimension: authority
    type: int
    sql: ${TABLE}.authority

  - dimension: banned
    type: yesno
    sql: ${TABLE}.banned

  - dimension_group: birthdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.birthdate

  - dimension: coolpoints_quota_add
    type: int
    sql: ${TABLE}.coolpoints_quota_add

  - dimension: coolpoints_quota_subtract
    type: int
    sql: ${TABLE}.coolpoints_quota_subtract

  - dimension: coolpoints_total
    type: int
    sql: ${TABLE}.coolpoints_total

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: delete_after
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.delete_after

  - dimension: deleted
    type: int
    sql: ${TABLE}.deleted

  - dimension: descriptizzle_tally
    sql: ${TABLE}.descriptizzle_tally

  - dimension: dislikes
    sql: ${TABLE}.dislikes

  - dimension: email
    sql: ${TABLE}.email

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: friends_name_privacy
    sql: ${TABLE}.friends_name_privacy

  - dimension: gender
    sql: ${TABLE}.gender

  - dimension: global_name_privacy
    sql: ${TABLE}.global_name_privacy

  - dimension: has_profile_image
    type: yesno
    sql: ${TABLE}.has_profile_image

  - dimension_group: last_activity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_activity

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: likes
    sql: ${TABLE}.likes

  - dimension: location
    sql: ${TABLE}.location

  - dimension_group: logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.logged_in_at

  - dimension: photo_scheme
    type: int
    sql: ${TABLE}.photo_scheme

  - dimension_group: refreshed_points
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.refreshed_points_at

  - dimension: salt
    sql: ${TABLE}.salt

  - dimension: salted_password
    sql: ${TABLE}.salted_password

  - dimension: security_token
    sql: ${TABLE}.security_token

  - dimension: show_birthday
    type: yesno
    sql: ${TABLE}.show_birthday

  - dimension_group: social_suicide_ends
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.social_suicide_ends

  - dimension: social_suicide_times
    type: int
    sql: ${TABLE}.social_suicide_times

  - dimension: status
    sql: ${TABLE}.status

  - dimension_group: token_expiry
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.token_expiry

  - dimension: took_oath
    type: yesno
    sql: ${TABLE}.took_oath

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: verified
    type: int
    sql: ${TABLE}.verified

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - firstname
    - lastname
    - changelog_posts.count
    - chat_messages.count
    - coolpoints_transactions.count
    - coupons.count
    - descriptizzle_votes.count
    - donations.count
    - friendships.count
    - gestures.count
    - name_changes.count
    - notifications.count
    - photos.count
    - photo_comments.count
    - submissions.count
    - submission_comments.count
    - suggestions.count
    - survey_answers.count
    - teams_users.count
    - whiteboard_messages.count

