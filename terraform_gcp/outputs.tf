
output "dataset_id" {
  value = google_bigquery_dataset.simple_dataset_employee.dataset_id
}

output "table_id" {
  value = google_bigquery_table.simple_table.table_id
}

output "table_schema" {
  value = google_bigquery_table.simple_table.schema
}
