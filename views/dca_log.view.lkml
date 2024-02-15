# The name of this view in Looker is "Dca Log"
view: dca_log {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.dca_log` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Data Processing Date" in Explore.

  dimension: data_processing_date {
    type: string
    sql: ${TABLE}.data_processing_date ;;
  }

  dimension: exception {
    type: string
    sql: ${TABLE}.exception ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: execution_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.execution_datetime ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: record_processed {
    type: string
    sql: ${TABLE}.record_processed ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.task_name ;;
  }
  measure: count {
    type: count
    drill_fields: [task_name, job_name]
  }
}
