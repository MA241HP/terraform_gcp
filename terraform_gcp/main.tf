provider "google" {
  project = var.project_id
  region  = var.region
}

# Create BigQuery dataset
resource "google_bigquery_dataset" "simple_dataset_employee" {
  dataset_id                = var.dataset_id
  location                  = var.location
  delete_contents_on_destroy = true
}

# Create BigQuery table within the above dataset
resource "google_bigquery_table" "simple_table" {
  dataset_id = google_bigquery_dataset.simple_dataset_employee.dataset_id
  table_id   = var.table_id

  schema = jsonencode(var.schema)
  deletion_protection = false
}
