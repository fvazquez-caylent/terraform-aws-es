variable "name-prefix" {
  description = "A string to prepend to names of resources created by this example"
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources created by this example."
  default = {
    Author      = "Tamr"
    Environment = "Example"
  }
}

variable "create_new_service_role" {
  default     = false
  type        = bool
  description = "Whether to create a new IAM service linked role for ES. This only needs to happen once per account. If false, linked_service_role is required"
}


variable "log_types" {
  type        = list(string)
  description = "A list of log types that will be published to CloudWatch. Valid values are SEARCH_SLOW_LOGS, INDEX_SLOW_LOGS, ES_APPLICATION_LOGS and AUDIT_LOGS."
  default     = ["ES_APPLICATION_LOGS", "SEARCH_SLOW_LOGS", "INDEX_SLOW_LOGS"]
}

variable "log_retention_in_days" {
  type        = number
  description = <<EOF
  Specifies the number of days you want to retain log events.
  Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0.
  If you select 0, the events in the log group are always retained and never expire.
  EOF
  default     = 0
}
