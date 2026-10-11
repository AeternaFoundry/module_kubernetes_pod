output "pods_id" {
  description = "Map of id values across all pods, keyed the same as var.pods except keys with no id are omitted"
  value       = { for k, v in kubernetes_pod.pods : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pods_metadata" {
  description = "Map of metadata values across all pods, keyed the same as var.pods except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_pod.pods : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "pods_spec" {
  description = "Map of spec values across all pods, keyed the same as var.pods except keys with no spec are omitted"
  value       = { for k, v in kubernetes_pod.pods : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}
output "pods_target_state" {
  description = "Map of target_state values across all pods, keyed the same as var.pods except keys with no target_state are omitted"
  value       = { for k, v in kubernetes_pod.pods : k => v.target_state if v.target_state != null && length(v.target_state) > 0 }
}

