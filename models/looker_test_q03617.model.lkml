connection: "qai_de_looker_training_prod_q03617_shreya_kothavale"

# include all the views
include: "/views/**/*.view"

datagroup: looker_test_q03617_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_test_q03617_default_datagroup

explore: dialogflow_cleaned_logs {}
