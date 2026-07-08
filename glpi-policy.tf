resource "scm_address" "glpi_app" {
  folder      = "Mobile Users"
  name        = "S9-GLPI-App"
  description = "GLPI private application object created by Terraform for S9 Policy as Code"

  ip_netmask = var.glpi_ip
}

resource "scm_security_rule" "allow_glpi" {
  folder   = "Mobile Users"
  position = "pre"

  name        = "S9-Allow-GLPI-ZTNA"
  description = "Allow GlobalProtect/ZTNA users to access GLPI private app"

  action      = "allow"
  category    = ["any"]
  application = ["web-browsing", "ssl"]
  service     = ["application-default"]

  from = ["trust"]
  to   = ["untrust"]

  source      = ["any"]
  destination = [scm_address.glpi_app.name]

  negate_source      = false
  negate_destination = false

  source_user     = ["any"]
  source_hip      = ["any"]
  destination_hip = ["any"]

  log_start = false
  log_end   = true

  disabled = false

  profile_setting = {
    group = ["best-practice"]
  }
}
