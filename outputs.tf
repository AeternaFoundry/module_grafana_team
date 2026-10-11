output "teams_id" {
  description = "Map of id values across all teams, keyed the same as var.teams except keys with no id are omitted"
  value       = { for k, v in grafana_team.teams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "teams_admins" {
  description = "Map of admins values across all teams, keyed the same as var.teams except keys with no admins are omitted"
  value       = { for k, v in grafana_team.teams : k => v.admins if v.admins != null && length(v.admins) > 0 }
}
output "teams_email" {
  description = "Map of email values across all teams, keyed the same as var.teams except keys with no email are omitted"
  value       = { for k, v in grafana_team.teams : k => v.email if v.email != null && length(v.email) > 0 }
}
output "teams_ignore_externally_synced_members" {
  description = "Map of ignore_externally_synced_members values across all teams, keyed the same as var.teams except keys with no ignore_externally_synced_members are omitted"
  value       = { for k, v in grafana_team.teams : k => v.ignore_externally_synced_members if v.ignore_externally_synced_members != null }
}
output "teams_members" {
  description = "Map of members values across all teams, keyed the same as var.teams except keys with no members are omitted"
  value       = { for k, v in grafana_team.teams : k => v.members if v.members != null && length(v.members) > 0 }
}
output "teams_name" {
  description = "Map of name values across all teams, keyed the same as var.teams except keys with no name are omitted"
  value       = { for k, v in grafana_team.teams : k => v.name if v.name != null && length(v.name) > 0 }
}
output "teams_org_id" {
  description = "Map of org_id values across all teams, keyed the same as var.teams except keys with no org_id are omitted"
  value       = { for k, v in grafana_team.teams : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "teams_preferences" {
  description = "Map of preferences values across all teams, keyed the same as var.teams except keys with no preferences are omitted"
  value       = { for k, v in grafana_team.teams : k => v.preferences if v.preferences != null && length(v.preferences) > 0 }
}
output "teams_team_id" {
  description = "Map of team_id values across all teams, keyed the same as var.teams except keys with no team_id are omitted"
  value       = { for k, v in grafana_team.teams : k => v.team_id if v.team_id != null }
}
output "teams_team_sync" {
  description = "Map of team_sync values across all teams, keyed the same as var.teams except keys with no team_sync are omitted"
  value       = { for k, v in grafana_team.teams : k => v.team_sync if v.team_sync != null && length(v.team_sync) > 0 }
}
output "teams_team_uid" {
  description = "Map of team_uid values across all teams, keyed the same as var.teams except keys with no team_uid are omitted"
  value       = { for k, v in grafana_team.teams : k => v.team_uid if v.team_uid != null && length(v.team_uid) > 0 }
}

