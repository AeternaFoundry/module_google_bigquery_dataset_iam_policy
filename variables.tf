variable "bigquery_dataset_iam_policies" {
  description = <<EOT
Map of bigquery_dataset_iam_policies, attributes below
Required:
    - dataset_id
    - policy_data
Optional:
    - project
EOT

  type = map(object({
    dataset_id  = string
    policy_data = string
    project     = optional(string)
  }))
}

