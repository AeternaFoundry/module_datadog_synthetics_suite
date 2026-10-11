variable "synthetics_suites" {
  description = <<EOT
Map of synthetics_suites, attributes below
Required:
    - name
Optional:
    - message
    - tags
    - options (block):
        - alerting_threshold (required)
    - tests (block):
        - alerting_criticality (optional)
        - public_id (required)
EOT

  type = map(object({
    name    = string
    message = optional(string)
    tags    = optional(set(string))
    options = optional(list(object({
      alerting_threshold = number
    })))
    tests = optional(list(object({
      alerting_criticality = optional(string)
      public_id            = string
    })))
  }))
}

