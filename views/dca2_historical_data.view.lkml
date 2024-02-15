# The name of this view in Looker is "Dca2 Historical Data"
view: dca2_historical_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dca.dca2_historical_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agent Sine" in Explore.

  dimension: agent_sine {
    type: string
    description: "Identifies the party within the requesting entity."
    sql: ${TABLE}.agent_sine ;;
  }

  dimension: direct_connect_platform_booking {
    type: yesno
    description: "Indicates if Direct Connect Platform (DCP) booking, created by GSA or ownership changed to DCP by RES agent."
    sql: ${TABLE}.direct_connect_platform_booking ;;
  }

  dimension: firsttransaction_flag {
    type: yesno
    description: "Change Indicator status for first transaction"
    sql: ${TABLE}.firsttransaction_flag ;;
  }

  dimension: home_pseudo_city_cd {
    type: string
    description: "An identification code assigned to the office/agency home city by a reservation system"
    sql: ${TABLE}.home_pseudo_city_cd ;;
  }

  dimension_group: ingest_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ingest_ts ;;
  }

  dimension: itinerary_flag {
    type: yesno
    description: "Change indicator status for any itiniary change"
    sql: ${TABLE}.itinerary_flag ;;
  }

  dimension: number_in_party {
    type: number
    description: "Number of name fields in the PNR"
    sql: ${TABLE}.number_in_party ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_in_party {
    type: sum
    sql: ${number_in_party} ;;  }
  measure: average_number_in_party {
    type: average
    sql: ${number_in_party} ;;  }

  dimension: number_of_air_segment {
    type: number
    sql: ${TABLE}.number_of_air_segment ;;
  }

  dimension: oac_accounting_cd {
    type: string
    description: "The personal account code associated with user AAA city during the original PNR create session."
    sql: ${TABLE}.oac_accounting_cd ;;
  }

  dimension: pcc {
    type: string
    description: "An identification code assigned to an office agency by a reservation system"
    sql: ${TABLE}.pcc ;;
  }

  dimension_group: pnr_create_dt {
    type: time
    description: "reservation create date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pnr_create_dt ;;
  }

  dimension: pnr_locator_id {
    type: string
    description: "Reservation ID"
    sql: ${TABLE}.pnr_locator_id ;;
  }

  dimension: pnr_sequence {
    type: number
    description: "Reservation sequence number for any change and modificatin"
    sql: ${TABLE}.pnr_sequence ;;
  }

  dimension: source_system_id {
    type: string
    description: "The host partition belonging to the hosted carrier"
    sql: ${TABLE}.source_system_id ;;
  }

  dimension_group: transmission_ts {
    type: time
    description: "PNRC timestamp of when the PNR image was read from PNRC database to be sent to CCC."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.transmission_ts ;;
  }
  measure: count {
    type: count
  }
}
