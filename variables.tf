variable "scm_client_id" {
  description = "Strata Cloud Manager service account Client ID"
  type        = string
  sensitive   = true
}

variable "scm_client_secret" {
  description = "Strata Cloud Manager service account Client Secret"
  type        = string
  sensitive   = true
}

variable "scm_tsg_id" {
  description = "Strata Cloud Manager TSG ID"
  type        = string
  sensitive   = true
}

variable "glpi_ip" {
  description = "GLPI server private IP"
  type        = string
  default     = "192.168.50.4/32"
}
