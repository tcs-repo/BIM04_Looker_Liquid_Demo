# The name of this view in Looker is "Liquid Demo Data"
view: liquid_demo_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai-accelerators-dai.BIM04_Looker_Liquid_Demo.Liquid_Demo_Data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agent" in Explore.

  dimension: agent {
    type: string
    sql: ${TABLE}.Agent ;;
  }

  dimension: director {
    type: string
    sql: ${TABLE}.Director ;;
  }

  dimension: hod {
    type: string
    sql: ${TABLE}.HOD ;;
  }

  dimension: manager {
    type: string
    sql: ${TABLE}.Manager ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

dimension: UserRole {
  type: string
  sql: {{ _user_attributes['org_role']}} ;;
}

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sales {
    type: sum
    sql: ${sales} ;;  }
  measure: average_sales {
    type: average
    sql: ${sales} ;;  }
  measure: count {
    type: count
  }
}
