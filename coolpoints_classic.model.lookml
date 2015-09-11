- connection: coolpoints_classic

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: changelog_posts
  joins:
    - join: users
      type: left_outer
      sql_on: ${changelog_posts.user_id} = ${users.id}
      relationship: many_to_one


- explore: chat_messages
  joins:
    - join: chats
      type: left_outer
      sql_on: ${chat_messages.chat_id} = ${chats.id}
      relationship: many_to_one

    - join: users
      type: left_outer
      sql_on: ${chat_messages.user_id} = ${users.id}
      relationship: many_to_one


- explore: chats

- explore: contests

- explore: coolpoints_transactions
  joins:
    - join: users
      type: left_outer
      sql_on: ${coolpoints_transactions.user_id} = ${users.id}
      relationship: many_to_one


- explore: coupon_campaigns

- explore: coupons
  joins:
    - join: coupon_campaigns
      type: left_outer
      sql_on: ${coupons.coupon_campaign_id} = ${coupon_campaigns.id}
      relationship: many_to_one

    - join: users
      type: left_outer
      sql_on: ${coupons.user_id} = ${users.id}
      relationship: many_to_one


- explore: descriptizzle_votes
  joins:
    - join: users
      type: left_outer
      sql_on: ${descriptizzle_votes.user_id} = ${users.id}
      relationship: many_to_one

    - join: descriptizzles
      type: left_outer
      sql_on: ${descriptizzle_votes.descriptizzle_id} = ${descriptizzles.id}
      relationship: many_to_one


- explore: descriptizzles

- explore: donations
  joins:
    - join: users
      type: left_outer
      sql_on: ${donations.user_id} = ${users.id}
      relationship: many_to_one


- explore: friendships
  joins:
    - join: users
      type: left_outer
      sql_on: ${friendships.user_id} = ${users.id}
      relationship: many_to_one


- explore: gesture_types

- explore: gestures
  joins:
    - join: users
      type: left_outer
      sql_on: ${gestures.user_id} = ${users.id}
      relationship: many_to_one

    - join: gesture_types
      type: left_outer
      sql_on: ${gestures.gesture_type_id} = ${gesture_types.id}
      relationship: many_to_one


- explore: help_categories

- explore: help_documents

- explore: name_changes
  joins:
    - join: users
      type: left_outer
      sql_on: ${name_changes.user_id} = ${users.id}
      relationship: many_to_one


- explore: notifications
  joins:
    - join: users
      type: left_outer
      sql_on: ${notifications.user_id} = ${users.id}
      relationship: many_to_one


- explore: photo_comments
  joins:
    - join: photos
      type: left_outer
      sql_on: ${photo_comments.photo_id} = ${photos.id}
      relationship: many_to_one

    - join: users
      type: left_outer
      sql_on: ${photo_comments.user_id} = ${users.id}
      relationship: many_to_one


- explore: photos
  joins:
    - join: users
      type: left_outer
      sql_on: ${photos.user_id} = ${users.id}
      relationship: many_to_one


- explore: schema_info

- explore: sessions

- explore: settings

- explore: submission_comments
  joins:
    - join: submissions
      type: left_outer
      sql_on: ${submission_comments.submission_id} = ${submissions.id}
      relationship: many_to_one

    - join: users
      type: left_outer
      sql_on: ${submission_comments.user_id} = ${users.id}
      relationship: many_to_one

    - join: contests
      type: left_outer
      sql_on: ${submissions.contest_id} = ${contests.id}
      relationship: many_to_one


- explore: submissions
  joins:
    - join: contests
      type: left_outer
      sql_on: ${submissions.contest_id} = ${contests.id}
      relationship: many_to_one

    - join: users
      type: left_outer
      sql_on: ${submissions.user_id} = ${users.id}
      relationship: many_to_one


- explore: suggestions
  joins:
    - join: users
      type: left_outer
      sql_on: ${suggestions.user_id} = ${users.id}
      relationship: many_to_one


- explore: survey_answers
  joins:
    - join: users
      type: left_outer
      sql_on: ${survey_answers.user_id} = ${users.id}
      relationship: many_to_one

    - join: survey_questions
      type: left_outer
      sql_on: ${survey_answers.survey_question_id} = ${survey_questions.id}
      relationship: many_to_one


- explore: survey_questions

- explore: teams

- explore: teams_users
  joins:
    - join: users
      type: left_outer
      sql_on: ${teams_users.user_id} = ${users.id}
      relationship: many_to_one

    - join: teams
      type: left_outer
      sql_on: ${teams_users.team_id} = ${teams.id}
      relationship: many_to_one


- explore: users

- explore: whiteboard_messages
  joins:
    - join: users
      type: left_outer
      sql_on: ${whiteboard_messages.user_id} = ${users.id}
      relationship: many_to_one


