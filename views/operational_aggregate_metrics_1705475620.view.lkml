# The name of this view in Looker is "Operational Aggregate Metrics 1705475620"
view: operational_aggregate_metrics_1705475620 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.operational_aggregate_metrics_1705475620` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Airline Code" in Explore.

  dimension: airline_code {
    type: string
    sql: ${TABLE}.airline_code ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}.application_id ;;
  }

  dimension: avg_processing_time {
    type: number
    sql: ${TABLE}.avg_processing_time ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_processing_time {
    type: sum
    sql: ${avg_processing_time} ;;  }
  measure: average_avg_processing_time {
    type: average
    sql: ${avg_processing_time} ;;  }

  dimension: avg_request_size {
    type: number
    sql: ${TABLE}.avg_request_size ;;
  }

  dimension: avg_response_size {
    type: number
    sql: ${TABLE}.avg_response_size ;;
  }

  dimension: avg_response_time {
    type: number
    sql: ${TABLE}.avg_response_time ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: epr_suffix {
    type: string
    sql: ${TABLE}.epr_suffix ;;
  }

  dimension: error_type {
    type: string
    sql: ${TABLE}.error_type ;;
  }

  dimension: is_robotic {
    type: string
    sql: ${TABLE}.is_robotic ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: load {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.load_date ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}.market ;;
  }

  dimension: oac {
    type: string
    sql: ${TABLE}.oac ;;
  }

  dimension_group: op_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.op_datetime ;;
  }

  dimension: pcc {
    type: string
    sql: ${TABLE}.pcc ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }

  dimension: tps_95th_percentile_suffix {
    type: number
    sql: ${TABLE}.tps_95th_percentile_suffix ;;
  }

  dimension: tps_95th_percentile_user_id_suffix {
    type: number
    value_format_name: id
    sql: ${TABLE}.tps_95th_percentile_user_id_suffix ;;
  }

  dimension: tps_99th_percentile_suffix {
    type: number
    sql: ${TABLE}.tps_99th_percentile_suffix ;;
  }

  dimension: tps_99th_percentile_user_id_suffix {
    type: number
    value_format_name: id
    sql: ${TABLE}.tps_99th_percentile_user_id_suffix ;;
  }

  dimension: tps_peak_suffix {
    type: number
    sql: ${TABLE}.tps_peak_suffix ;;
  }

  dimension: tps_peak_user_id_suffix {
    type: number
    value_format_name: id
    sql: ${TABLE}.tps_peak_user_id_suffix ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
  }
  measure: count {
    type: count
  }
}
