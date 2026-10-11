output "synthetics_suites_id" {
  description = "Map of id values across all synthetics_suites, keyed the same as var.synthetics_suites except keys with no id are omitted"
  value       = { for k, v in datadog_synthetics_suite.synthetics_suites : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synthetics_suites_message" {
  description = "Map of message values across all synthetics_suites, keyed the same as var.synthetics_suites except keys with no message are omitted"
  value       = { for k, v in datadog_synthetics_suite.synthetics_suites : k => v.message if v.message != null && length(v.message) > 0 }
}
output "synthetics_suites_name" {
  description = "Map of name values across all synthetics_suites, keyed the same as var.synthetics_suites except keys with no name are omitted"
  value       = { for k, v in datadog_synthetics_suite.synthetics_suites : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synthetics_suites_options" {
  description = "Map of options values across all synthetics_suites, keyed the same as var.synthetics_suites except keys with no options are omitted"
  value       = { for k, v in datadog_synthetics_suite.synthetics_suites : k => v.options if v.options != null && length(v.options) > 0 }
}
output "synthetics_suites_tags" {
  description = "Map of tags values across all synthetics_suites, keyed the same as var.synthetics_suites except keys with no tags are omitted"
  value       = { for k, v in datadog_synthetics_suite.synthetics_suites : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "synthetics_suites_tests" {
  description = "Map of tests values across all synthetics_suites, keyed the same as var.synthetics_suites except keys with no tests are omitted"
  value       = { for k, v in datadog_synthetics_suite.synthetics_suites : k => v.tests if v.tests != null && length(v.tests) > 0 }
}

