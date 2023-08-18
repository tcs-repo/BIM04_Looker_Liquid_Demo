# The name of this view in Looker is "Looker Incident"
view: looker_incident {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai-accelerators-dai.Looker_Garage.Looker_INCIDENT` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category L1" in Explore.

  dimension: category_l1 {
    type: string
    sql: ${TABLE}.CATEGORY_L1 ;;
  }

  dimension: cc_user_id {
    type: string
    sql: ${TABLE}.CC_USER_ID ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: closed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CLOSED_DATE ;;
  }

  dimension: contract_customer_id {
    type: string
    sql: ${TABLE}.CONTRACT_CUSTOMER_ID ;;
  }

  dimension: contract_customer_name {
    type: string
    sql: ${TABLE}.CONTRACT_CUSTOMER_NAME ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CREATED_DATE ;;
  }

  dimension: customer_feedback_comment {
    type: string
    sql: ${TABLE}.CUSTOMER_FEEDBACK_COMMENT ;;
  }

  dimension: customer_feedback_rating {
    type: number
    sql: ${TABLE}.CUSTOMER_FEEDBACK_RATING ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_feedback_rating {
    type: sum
    sql: ${customer_feedback_rating} ;;  }
  measure: average_customer_feedback_rating {
    type: average
    sql: ${customer_feedback_rating} ;;  }

  dimension: customer_segment {
    type: string
    sql: ${TABLE}.CUSTOMER_SEGMENT ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension_group: first_response {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FIRST_RESPONSE_TIME ;;
  }

  dimension: inc_no {
    type: string
    sql: ${TABLE}.INC_NO ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.IS_CLOSED ;;
  }

  dimension: is_escalated {
    type: yesno
    sql: ${TABLE}.IS_ESCALATED ;;
  }

  dimension: is_nurtured {
    type: yesno
    sql: ${TABLE}.IS_NURTURED ;;
  }

  dimension: is_reopen {
    type: yesno
    sql: ${TABLE}.IS_REOPEN ;;
  }

  dimension: office {
    type: string
    sql: ${TABLE}.OFFICE ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OWNER_ID ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: sub_category_l2 {
    type: string
    sql: ${TABLE}.SUB_CATEGORY_L2 ;;
  }

  dimension: subordinate_category_l3 {
    type: string
    sql: ${TABLE}.SUBORDINATE_CATEGORY_L3 ;;
  }

  dimension: ticket_created_by {
    type: string
    sql: ${TABLE}.TICKET_CREATED_BY ;;
  }

  dimension: transfer_reason {
    type: string
    sql: ${TABLE}.TRANSFER_REASON ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }
  measure: count {
    type: count
    drill_fields: [project_name, contract_customer_name]
  }
}
