# The name of this view in Looker is "Mdm"
view: mdm {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.mdm` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country Code" in Explore.

  dimension: country_code {
    type: string
    description: "Country Code"
    sql: ${TABLE}.country_code ;;
  }

  dimension: pref {
    type: number
    description: "pref"
    sql: ${TABLE}.pref ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pref {
    type: sum
    sql: ${pref} ;;  }
  measure: average_pref {
    type: average
    sql: ${pref} ;;  }

  dimension: preference {
    type: number
    description: "preference"
    sql: ${TABLE}.preference ;;
  }

  dimension: service_location_code {
    type: string
    description: "Service Location Code"
    sql: ${TABLE}.service_location_code ;;
  }
  measure: count {
    type: count
  }
}
