# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "Mobile Users Container:::d35bd7f6-3b14-46ee-a822-aaf40b84c46f"
resource "scm_security_rule" "allow_graylog_access" {
  action             = "allow"
  application        = ["any"]
  category           = ["any"]
  description        = "Updated Allow Graylog Access policy description via Terraform IaC"
  destination        = ["Graylog-Internal Address"]
  destination_hip    = ["any"]
  device             = null
  disabled           = false
  folder             = "Mobile Users Container"
  from               = ["trust", "untrust"]
  log_end            = true
  log_setting        = "Cortex Data Lake"
  log_start          = false
  name               = "Allow-Graylog-Access"
  negate_destination = false
  negate_source      = false
  policy_type        = "Security"
  profile_setting = {
    group = ["best-practice"]
  }
  relative_position = null
  schedule          = null
  service           = ["application-default"]
  snippet           = null
  source            = ["any"]
  source_hip        = ["any"]
  source_user       = ["CN=IT-Admins,DC=m365x97529302,DC=onmicrosoft,DC=com", "CN=Director,DC=m365x97529302,DC=onmicrosoft,DC=com"]
  tag               = null
  target_rule       = null
  to                = ["trust"]
}
