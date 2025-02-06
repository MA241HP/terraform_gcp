# definition of each variable
variable "project_id" {
  description = "The GCP project ID where resources will be created."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
  default     = "us-central1"
}

variable "dataset_id" {
  description = "The ID of the BigQuery dataset."
  type        = string
}

variable "location" {
  description = "The location for the BigQuery dataset."
  type        = string
  default     = "US"
}

variable "table_id" {
  description = "The ID of the BigQuery table."
  type        = string
}
#passing it as list of objects
variable "schema" {
  description = "Schema for the BigQuery table"
  type = list(object({
    name        = string
    type        = string
    mode        = string
    description = string
  }))
}

