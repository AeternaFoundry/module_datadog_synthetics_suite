resource "datadog_synthetics_suite" "synthetics_suites" {
  for_each = var.synthetics_suites

  name    = each.value.name
  message = each.value.message
  tags    = each.value.tags

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      alerting_threshold = options.value.alerting_threshold
    }
  }

  dynamic "tests" {
    for_each = each.value.tests != null ? each.value.tests : []
    content {
      alerting_criticality = tests.value.alerting_criticality
      public_id            = tests.value.public_id
    }
  }
}

