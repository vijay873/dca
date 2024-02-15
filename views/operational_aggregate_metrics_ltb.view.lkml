# The name of this view in Looker is "Operational Aggregate Metrics Ltb"
view: operational_aggregate_metrics_ltb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.operational_aggregate_metrics_ltb` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Airline Code" in Explore.

  dimension: airline_code {
    type: string
    description: "Airline Code"
    sql: ${TABLE}.airline_code ;;
  }

  dimension: epr_suffix {
    type: string
    description: "epr_suffix"
    sql: ${TABLE}.epr_suffix ;;
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
    description: "Month"
    sql: ${TABLE}.Month ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_month {
    type: sum
    sql: ${month} ;;  }
  measure: average_month {
    type: average
    sql: ${month} ;;  }
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

  dimension: pcc {
    type: string
    description: "pcc"
    sql: ${TABLE}.pcc ;;
  }

  dimension: s {
    type: number
    description: "s"
    sql: ${TABLE}.s ;;
  }

  dimension: t {
    type: number
    description: "t"
    sql: ${TABLE}.t ;;
  }

  dimension: user_id {
    type: string
    description: "user_id"
    sql: ${TABLE}.user_id ;;
  }

  dimension: volume {
    type: number
    description: "volume"
    sql: ${TABLE}.volume ;;
  }

  dimension: year {
    type: number
    description: "Year"
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
  }
}
