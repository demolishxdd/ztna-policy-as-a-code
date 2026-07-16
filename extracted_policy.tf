# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "Prisma Access:::1ea38189-79e6-4d14-9b3e-69b480194277"
resource "scm_security_rule" "extracted_rule" {
  action          = "allow"
  application     = ["web-browsing", "ssl"]
  category        = ["any"]
  description     = "Managed entirely via Terraform code"
  destination     = ["any"]
  destination_hip = ["any"]
  device          = null
  disabled        = false
  folder          = "Prisma Access"
  from            = ["trust"]
  log_end         = true
  log_setting     = "Cortex Data Lake"
  log_start       = false
  name            = "Allow-Web-With-URL-Filter"
  policy_type     = "Security"
  profile_setting = {
    group = ["best-practice"]
  }
  relative_position = null
  schedule          = null
  service           = ["application-default"]
  snippet           = null
  source            = ["any"]
  source_hip        = ["any"]
  source_user       = ["any"]
  tag               = null
  target_rule       = null
  to                = ["untrust"]
}
