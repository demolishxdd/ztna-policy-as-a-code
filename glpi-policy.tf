resource "scm_security_rule" "block_youtube_test" {
  folder   = "Mobile Users"
  position = "pre"

  name        = "S9-Block-YouTube-Test"
  description = "Block YouTube for S9 Policy as Code lab demonstration"

  action      = "deny"
  application = ["youtube-base", "youtube"]
  service     = ["application-default"]
  category    = ["any"]

  from = ["trust"]
  to   = ["untrust"]

  source      = ["any"]
  destination = ["any"]

  negate_source      = false
  negate_destination = false

  source_user     = ["any"]
  source_hip      = ["any"]
  destination_hip = ["any"]

  log_start = false
  log_end   = true

  disabled = false
}