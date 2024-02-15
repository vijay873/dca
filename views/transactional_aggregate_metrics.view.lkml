# The name of this view in Looker is "Transactional Aggregate Metrics"
view: transactional_aggregate_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.transactional_aggregate_metrics` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Airline Code" in Explore.

  dimension: airline_code {
    type: string
    description: "code of airline"
    sql: ${TABLE}.airline_code ;;
  }

  dimension: channel {
    type: string
    description: "channel"
    sql: ${TABLE}.channel ;;
  }

  dimension: country_code {
    type: string
    description: "Code of country"
    sql: ${TABLE}.country_code ;;
  }

  dimension: epr_suffix {
    type: string
    description: "epr suffix"
    sql: ${TABLE}.epr_suffix ;;
  }

  dimension: is_dcp {
    type: string
    description: "is dcp"
    sql: ${TABLE}.is_dcp ;;
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

  dimension: num_added_prev_psj {
    type: number
    description: "num added prev psj"
    sql: ${TABLE}.num_added_prev_psj ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_num_added_prev_psj {
    type: sum
    sql: ${num_added_prev_psj} ;;  }
  measure: average_num_added_prev_psj {
    type: average
    sql: ${num_added_prev_psj} ;;  }

  dimension: num_delta_prev_psj {
    type: number
    description: "num delta prev psj"
    sql: ${TABLE}.num_delta_prev_psj ;;
  }

  dimension: num_oc_booking {
    type: number
    description: "num oc booking"
    sql: ${TABLE}.num_oc_booking ;;
  }

  dimension: num_oc_psj {
    type: number
    description: "num oc psj"
    sql: ${TABLE}.num_oc_psj ;;
  }

  dimension: num_psj {
    type: number
    description: "num psj"
    sql: ${TABLE}.num_psj ;;
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
    description: "DATE"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.op_date ;;
  }

  dimension_group: op_datetime {
    type: time
    description: "Datetime"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.op_datetime ;;
  }

  dimension: pcc {
    type: string
    description: "pcc"
    sql: ${TABLE}.pcc ;;
  }

  dimension: total_cancelled_pass {
    type: number
    description: "total cancelled pass"
    sql: ${TABLE}.total_cancelled_pass ;;
  }

  dimension: total_pass {
    type: number
    description: "total pass"
    sql: ${TABLE}.total_pass ;;
  }

  dimension: user_id {
    type: string
    description: "ID of user"
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
