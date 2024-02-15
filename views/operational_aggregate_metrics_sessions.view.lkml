# The name of this view in Looker is "Operational Aggregate Metrics Sessions"
view: operational_aggregate_metrics_sessions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.operational_aggregate_metrics_sessions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Airline Code" in Explore.

  dimension: airline_code {
    type: string
    description: "airline code"
    sql: ${TABLE}.airline_code ;;
  }

  dimension: application_id {
    type: string
    description: "application id"
    sql: ${TABLE}.application_id ;;
  }

  dimension: channel {
    type: string
    description: "channel"
    sql: ${TABLE}.channel ;;
  }

  dimension: country_code {
    type: string
    description: "country code"
    sql: ${TABLE}.country_code ;;
  }

  dimension: epr_suffix {
    type: string
    description: "epr suffix"
    sql: ${TABLE}.epr_suffix ;;
  }

  dimension: error_full {
    type: string
    description: "error full"
    sql: ${TABLE}.error_full ;;
  }

  dimension: error_throttled {
    type: string
    description: "error throttled"
    sql: ${TABLE}.error_throttled ;;
  }

  dimension: error_type {
    type: string
    description: "error type"
    sql: ${TABLE}.error_type ;;
  }

  dimension: hour {
    type: number
    description: "hour"
    sql: ${TABLE}.hour ;;
  }

  dimension: is_robotic {
    type: string
    description: "is robotic"
    sql: ${TABLE}.is_robotic ;;
  }

  dimension: market {
    type: string
    description: "market"
    sql: ${TABLE}.market ;;
  }

  dimension: month {
    type: number
    description: "month"
    sql: ${TABLE}.month ;;
  }

  dimension: month_year {
    type: string
    description: "Month Year"
    sql: ${TABLE}.Month_Year ;;
  }

  dimension: oac {
    type: string
    description: "oac"
    sql: ${TABLE}.oac ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: op {
    type: time
    description: "op_date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.op_date ;;
  }

  dimension_group: op_datetime {
    type: time
    description: "op_datetime"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.op_datetime ;;
  }

  dimension: pcc {
    type: string
    description: "pcc"
    sql: ${TABLE}.pcc ;;
  }

  dimension: service {
    type: string
    description: "service"
    sql: ${TABLE}.service ;;
  }

  dimension: session_close {
    type: number
    description: "session close"
    sql: ${TABLE}.session_close ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_session_close {
    type: sum
    sql: ${session_close} ;;  }
  measure: average_session_close {
    type: average
    sql: ${session_close} ;;  }

  dimension: session_open {
    type: number
    description: "session open"
    sql: ${TABLE}.session_open ;;
  }

  dimension: session_tps {
    type: number
    description: "session tps"
    sql: ${TABLE}.session_tps ;;
  }

  dimension: tps_peak_user_id_suffix {
    type: number
    description: "tps_peak_user_id_suffix"
    value_format_name: id
    sql: ${TABLE}.tps_peak_user_id_suffix ;;
  }

  dimension: user_id {
    type: string
    description: "user id"
    sql: ${TABLE}.user_id ;;
  }

  dimension: year {
    type: number
    description: "year"
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
