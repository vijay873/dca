# The name of this view in Looker is "Dca Last Run"
view: dca_last_run {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.dca_last_run` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: cur_load {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cur_load_date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer Name" in Explore.

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension_group: pre_load {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pre_load_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
    drill_fields: [job_name, customer_name]
  }
}
