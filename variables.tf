variable "teams" {
  description = <<EOT
Map of teams, attributes below
Required:
    - name
Optional:
    - admins
    - email
    - ignore_externally_synced_members
    - members
    - org_id
    - preferences (block):
        - home_dashboard_uid (optional)
        - theme (optional)
        - timezone (optional)
        - week_start (optional)
    - team_sync (block):
        - groups (optional)
EOT

  type = map(object({
    name                             = string
    admins                           = optional(set(string))
    email                            = optional(string)
    ignore_externally_synced_members = optional(bool)
    members                          = optional(set(string))
    org_id                           = optional(string)
    preferences = optional(list(object({
      home_dashboard_uid = optional(string)
      theme              = optional(string)
      timezone           = optional(string)
      week_start         = optional(string)
    })))
    team_sync = optional(list(object({
      groups = optional(set(string))
    })))
  }))
}

