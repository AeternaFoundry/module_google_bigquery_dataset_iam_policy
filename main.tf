resource "google_bigquery_dataset_iam_policy" "bigquery_dataset_iam_policies" {
  for_each = var.bigquery_dataset_iam_policies

  dataset_id  = each.value.dataset_id
  policy_data = each.value.policy_data
  project     = each.value.project
}

