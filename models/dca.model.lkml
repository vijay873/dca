# Define the database connection to be used for this model.
connection: "dca"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: dca_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dca_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Dca"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: dca2_historical_data {}

explore: mdm {}

explore: operational_aggregate_metrics_01312024_bkp {}

explore: operational_aggregate_metrics {}

explore: epr {}

explore: dca_log {}

explore: operational_aggregate_metrics_1705475620 {}

explore: dca_last_run {}

explore: operational_aggregate_metrics_ltb {}

explore: operational_aggregate_metrics_20240130_bkp {}

explore: operational_aggregate_metrics_03022024_bkp {}

explore: operational_aggregate_metrics_bkp_g3 {}

explore: operational_aggregate_metrics_sessions {}

explore: operational_aggregate_metrics20240212_t11_31_19 {}

explore: transactional_aggregate_metrics {}

