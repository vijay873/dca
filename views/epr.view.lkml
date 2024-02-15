# The name of this view in Looker is "Epr"
view: epr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.epr` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Access Method" in Explore.

  dimension: access_method {
    type: string
    sql: ${TABLE}.AccessMethod ;;
  }

  dimension: active_status {
    type: string
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: agent_sine {
    type: string
    sql: ${TABLE}.AgentSine ;;
  }

  dimension: domain_code {
    type: string
    sql: ${TABLE}.Domain_Code ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.Group_Code ;;
  }

  dimension: home_city {
    type: string
    sql: ${TABLE}.HomeCity ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: home_city_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.HomeCity_From_Date ;;
  }

  dimension_group: home_city_till {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.HomeCity_Till_Date ;;
  }

  dimension: logon_id {
    type: string
    sql: ${TABLE}.Logon_ID ;;
  }

  dimension: security_entity_id {
    type: number
    sql: ${TABLE}.Security_Entity_ID ;;
  }

  dimension_group: sine_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Sine_From_Date ;;
  }

  dimension_group: sine_till {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Sine_Till_Date ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.User_ID ;;
  }
  measure: count {
    type: count
  }
}
