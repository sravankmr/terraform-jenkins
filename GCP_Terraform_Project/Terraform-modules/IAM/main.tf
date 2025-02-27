resource "google_project_iam_member" "iam_binding" {
  for_each = var.iam_roles
  project  = var.project_id
  role     = each.key
  member   = each.value
}