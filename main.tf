resource "grafana_team" "teams" {
  for_each = var.teams

  name                             = each.value.name
  admins                           = each.value.admins
  email                            = each.value.email
  ignore_externally_synced_members = each.value.ignore_externally_synced_members
  members                          = each.value.members
  org_id                           = each.value.org_id

  dynamic "preferences" {
    for_each = each.value.preferences != null ? each.value.preferences : []
    content {
      home_dashboard_uid = preferences.value.home_dashboard_uid
      theme              = preferences.value.theme
      timezone           = preferences.value.timezone
      week_start         = preferences.value.week_start
    }
  }

  dynamic "team_sync" {
    for_each = each.value.team_sync != null ? each.value.team_sync : []
    content {
      groups = team_sync.value.groups
    }
  }
}

