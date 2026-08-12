resource "aws_appflow_flow" "appflow_flows" {
  for_each = var.appflow_flows

  name        = each.value.name
  description = each.value.description
  kms_arn     = each.value.kms_arn
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  dynamic "destination_flow_config" {
    for_each = each.value.destination_flow_config
    content {
      api_version            = destination_flow_config.value.api_version
      connector_profile_name = destination_flow_config.value.connector_profile_name
      connector_type         = destination_flow_config.value.connector_type
      destination_connector_properties {
        dynamic "custom_connector" {
          for_each = destination_flow_config.value.destination_connector_properties.custom_connector != null ? [destination_flow_config.value.destination_connector_properties.custom_connector] : []
          content {
            custom_properties = custom_connector.value.custom_properties
            entity_name       = custom_connector.value.entity_name
            dynamic "error_handling_config" {
              for_each = custom_connector.value.error_handling_config != null ? [custom_connector.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            id_field_names       = custom_connector.value.id_field_names
            write_operation_type = custom_connector.value.write_operation_type
          }
        }
        dynamic "customer_profiles" {
          for_each = destination_flow_config.value.destination_connector_properties.customer_profiles != null ? [destination_flow_config.value.destination_connector_properties.customer_profiles] : []
          content {
            domain_name      = customer_profiles.value.domain_name
            object_type_name = customer_profiles.value.object_type_name
          }
        }
        dynamic "event_bridge" {
          for_each = destination_flow_config.value.destination_connector_properties.event_bridge != null ? [destination_flow_config.value.destination_connector_properties.event_bridge] : []
          content {
            dynamic "error_handling_config" {
              for_each = event_bridge.value.error_handling_config != null ? [event_bridge.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            object = event_bridge.value.object
          }
        }
        dynamic "honeycode" {
          for_each = destination_flow_config.value.destination_connector_properties.honeycode != null ? [destination_flow_config.value.destination_connector_properties.honeycode] : []
          content {
            dynamic "error_handling_config" {
              for_each = honeycode.value.error_handling_config != null ? [honeycode.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            object = honeycode.value.object
          }
        }
        dynamic "lookout_metrics" {
          for_each = destination_flow_config.value.destination_connector_properties.lookout_metrics != null ? [destination_flow_config.value.destination_connector_properties.lookout_metrics] : []
          content {
          }
        }
        dynamic "marketo" {
          for_each = destination_flow_config.value.destination_connector_properties.marketo != null ? [destination_flow_config.value.destination_connector_properties.marketo] : []
          content {
            dynamic "error_handling_config" {
              for_each = marketo.value.error_handling_config != null ? [marketo.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            object = marketo.value.object
          }
        }
        dynamic "redshift" {
          for_each = destination_flow_config.value.destination_connector_properties.redshift != null ? [destination_flow_config.value.destination_connector_properties.redshift] : []
          content {
            bucket_prefix = redshift.value.bucket_prefix
            dynamic "error_handling_config" {
              for_each = redshift.value.error_handling_config != null ? [redshift.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            intermediate_bucket_name = redshift.value.intermediate_bucket_name
            object                   = redshift.value.object
          }
        }
        dynamic "s3" {
          for_each = destination_flow_config.value.destination_connector_properties.s3 != null ? [destination_flow_config.value.destination_connector_properties.s3] : []
          content {
            bucket_name   = s3.value.bucket_name
            bucket_prefix = s3.value.bucket_prefix
            dynamic "s3_output_format_config" {
              for_each = s3.value.s3_output_format_config != null ? [s3.value.s3_output_format_config] : []
              content {
                dynamic "aggregation_config" {
                  for_each = s3_output_format_config.value.aggregation_config != null ? [s3_output_format_config.value.aggregation_config] : []
                  content {
                    aggregation_type = aggregation_config.value.aggregation_type
                    target_file_size = aggregation_config.value.target_file_size
                  }
                }
                file_type = s3_output_format_config.value.file_type
                dynamic "prefix_config" {
                  for_each = s3_output_format_config.value.prefix_config != null ? [s3_output_format_config.value.prefix_config] : []
                  content {
                    prefix_format    = prefix_config.value.prefix_format
                    prefix_hierarchy = prefix_config.value.prefix_hierarchy
                    prefix_type      = prefix_config.value.prefix_type
                  }
                }
                preserve_source_data_typing = s3_output_format_config.value.preserve_source_data_typing
              }
            }
          }
        }
        dynamic "salesforce" {
          for_each = destination_flow_config.value.destination_connector_properties.salesforce != null ? [destination_flow_config.value.destination_connector_properties.salesforce] : []
          content {
            data_transfer_api = salesforce.value.data_transfer_api
            dynamic "error_handling_config" {
              for_each = salesforce.value.error_handling_config != null ? [salesforce.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            id_field_names       = salesforce.value.id_field_names
            object               = salesforce.value.object
            write_operation_type = salesforce.value.write_operation_type
          }
        }
        dynamic "sapo_data" {
          for_each = destination_flow_config.value.destination_connector_properties.sapo_data != null ? [destination_flow_config.value.destination_connector_properties.sapo_data] : []
          content {
            dynamic "error_handling_config" {
              for_each = sapo_data.value.error_handling_config != null ? [sapo_data.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            id_field_names = sapo_data.value.id_field_names
            object_path    = sapo_data.value.object_path
            dynamic "success_response_handling_config" {
              for_each = sapo_data.value.success_response_handling_config != null ? [sapo_data.value.success_response_handling_config] : []
              content {
                bucket_name   = success_response_handling_config.value.bucket_name
                bucket_prefix = success_response_handling_config.value.bucket_prefix
              }
            }
            write_operation_type = sapo_data.value.write_operation_type
          }
        }
        dynamic "snowflake" {
          for_each = destination_flow_config.value.destination_connector_properties.snowflake != null ? [destination_flow_config.value.destination_connector_properties.snowflake] : []
          content {
            bucket_prefix = snowflake.value.bucket_prefix
            dynamic "error_handling_config" {
              for_each = snowflake.value.error_handling_config != null ? [snowflake.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            intermediate_bucket_name = snowflake.value.intermediate_bucket_name
            object                   = snowflake.value.object
          }
        }
        dynamic "upsolver" {
          for_each = destination_flow_config.value.destination_connector_properties.upsolver != null ? [destination_flow_config.value.destination_connector_properties.upsolver] : []
          content {
            bucket_name   = upsolver.value.bucket_name
            bucket_prefix = upsolver.value.bucket_prefix
            s3_output_format_config {
              dynamic "aggregation_config" {
                for_each = upsolver.value.s3_output_format_config.aggregation_config != null ? [upsolver.value.s3_output_format_config.aggregation_config] : []
                content {
                  aggregation_type = aggregation_config.value.aggregation_type
                }
              }
              file_type = upsolver.value.s3_output_format_config.file_type
              prefix_config {
                prefix_format    = upsolver.value.s3_output_format_config.prefix_config.prefix_format
                prefix_hierarchy = upsolver.value.s3_output_format_config.prefix_config.prefix_hierarchy
                prefix_type      = upsolver.value.s3_output_format_config.prefix_config.prefix_type
              }
            }
          }
        }
        dynamic "zendesk" {
          for_each = destination_flow_config.value.destination_connector_properties.zendesk != null ? [destination_flow_config.value.destination_connector_properties.zendesk] : []
          content {
            dynamic "error_handling_config" {
              for_each = zendesk.value.error_handling_config != null ? [zendesk.value.error_handling_config] : []
              content {
                bucket_name                     = error_handling_config.value.bucket_name
                bucket_prefix                   = error_handling_config.value.bucket_prefix
                fail_on_first_destination_error = error_handling_config.value.fail_on_first_destination_error
              }
            }
            id_field_names       = zendesk.value.id_field_names
            object               = zendesk.value.object
            write_operation_type = zendesk.value.write_operation_type
          }
        }
      }
    }
  }

  source_flow_config {
    api_version            = each.value.source_flow_config.api_version
    connector_profile_name = each.value.source_flow_config.connector_profile_name
    connector_type         = each.value.source_flow_config.connector_type
    dynamic "incremental_pull_config" {
      for_each = each.value.source_flow_config.incremental_pull_config != null ? [each.value.source_flow_config.incremental_pull_config] : []
      content {
        datetime_type_field_name = incremental_pull_config.value.datetime_type_field_name
      }
    }
    source_connector_properties {
      dynamic "amplitude" {
        for_each = each.value.source_flow_config.source_connector_properties.amplitude != null ? [each.value.source_flow_config.source_connector_properties.amplitude] : []
        content {
          object = amplitude.value.object
        }
      }
      dynamic "custom_connector" {
        for_each = each.value.source_flow_config.source_connector_properties.custom_connector != null ? [each.value.source_flow_config.source_connector_properties.custom_connector] : []
        content {
          custom_properties = custom_connector.value.custom_properties
          entity_name       = custom_connector.value.entity_name
        }
      }
      dynamic "datadog" {
        for_each = each.value.source_flow_config.source_connector_properties.datadog != null ? [each.value.source_flow_config.source_connector_properties.datadog] : []
        content {
          object = datadog.value.object
        }
      }
      dynamic "dynatrace" {
        for_each = each.value.source_flow_config.source_connector_properties.dynatrace != null ? [each.value.source_flow_config.source_connector_properties.dynatrace] : []
        content {
          object = dynatrace.value.object
        }
      }
      dynamic "google_analytics" {
        for_each = each.value.source_flow_config.source_connector_properties.google_analytics != null ? [each.value.source_flow_config.source_connector_properties.google_analytics] : []
        content {
          object = google_analytics.value.object
        }
      }
      dynamic "infor_nexus" {
        for_each = each.value.source_flow_config.source_connector_properties.infor_nexus != null ? [each.value.source_flow_config.source_connector_properties.infor_nexus] : []
        content {
          object = infor_nexus.value.object
        }
      }
      dynamic "marketo" {
        for_each = each.value.source_flow_config.source_connector_properties.marketo != null ? [each.value.source_flow_config.source_connector_properties.marketo] : []
        content {
          object = marketo.value.object
        }
      }
      dynamic "s3" {
        for_each = each.value.source_flow_config.source_connector_properties.s3 != null ? [each.value.source_flow_config.source_connector_properties.s3] : []
        content {
          bucket_name   = s3.value.bucket_name
          bucket_prefix = s3.value.bucket_prefix
          dynamic "s3_input_format_config" {
            for_each = s3.value.s3_input_format_config != null ? [s3.value.s3_input_format_config] : []
            content {
              s3_input_file_type = s3_input_format_config.value.s3_input_file_type
            }
          }
        }
      }
      dynamic "salesforce" {
        for_each = each.value.source_flow_config.source_connector_properties.salesforce != null ? [each.value.source_flow_config.source_connector_properties.salesforce] : []
        content {
          data_transfer_api           = salesforce.value.data_transfer_api
          enable_dynamic_field_update = salesforce.value.enable_dynamic_field_update
          include_deleted_records     = salesforce.value.include_deleted_records
          object                      = salesforce.value.object
        }
      }
      dynamic "sapo_data" {
        for_each = each.value.source_flow_config.source_connector_properties.sapo_data != null ? [each.value.source_flow_config.source_connector_properties.sapo_data] : []
        content {
          object_path = sapo_data.value.object_path
          dynamic "pagination_config" {
            for_each = sapo_data.value.pagination_config != null ? [sapo_data.value.pagination_config] : []
            content {
              max_page_size = pagination_config.value.max_page_size
            }
          }
          dynamic "parallelism_config" {
            for_each = sapo_data.value.parallelism_config != null ? [sapo_data.value.parallelism_config] : []
            content {
              max_page_size = parallelism_config.value.max_page_size
            }
          }
        }
      }
      dynamic "service_now" {
        for_each = each.value.source_flow_config.source_connector_properties.service_now != null ? [each.value.source_flow_config.source_connector_properties.service_now] : []
        content {
          object = service_now.value.object
        }
      }
      dynamic "singular" {
        for_each = each.value.source_flow_config.source_connector_properties.singular != null ? [each.value.source_flow_config.source_connector_properties.singular] : []
        content {
          object = singular.value.object
        }
      }
      dynamic "slack" {
        for_each = each.value.source_flow_config.source_connector_properties.slack != null ? [each.value.source_flow_config.source_connector_properties.slack] : []
        content {
          object = slack.value.object
        }
      }
      dynamic "trendmicro" {
        for_each = each.value.source_flow_config.source_connector_properties.trendmicro != null ? [each.value.source_flow_config.source_connector_properties.trendmicro] : []
        content {
          object = trendmicro.value.object
        }
      }
      dynamic "veeva" {
        for_each = each.value.source_flow_config.source_connector_properties.veeva != null ? [each.value.source_flow_config.source_connector_properties.veeva] : []
        content {
          document_type        = veeva.value.document_type
          include_all_versions = veeva.value.include_all_versions
          include_renditions   = veeva.value.include_renditions
          include_source_files = veeva.value.include_source_files
          object               = veeva.value.object
        }
      }
      dynamic "zendesk" {
        for_each = each.value.source_flow_config.source_connector_properties.zendesk != null ? [each.value.source_flow_config.source_connector_properties.zendesk] : []
        content {
          object = zendesk.value.object
        }
      }
    }
  }

  dynamic "task" {
    for_each = each.value.task
    content {
      dynamic "connector_operator" {
        for_each = task.value.connector_operator != null ? task.value.connector_operator : []
        content {
          amplitude        = connector_operator.value.amplitude
          custom_connector = connector_operator.value.custom_connector
          datadog          = connector_operator.value.datadog
          dynatrace        = connector_operator.value.dynatrace
          google_analytics = connector_operator.value.google_analytics
          infor_nexus      = connector_operator.value.infor_nexus
          marketo          = connector_operator.value.marketo
          s3               = connector_operator.value.s3
          salesforce       = connector_operator.value.salesforce
          sapo_data        = connector_operator.value.sapo_data
          service_now      = connector_operator.value.service_now
          singular         = connector_operator.value.singular
          slack            = connector_operator.value.slack
          trendmicro       = connector_operator.value.trendmicro
          veeva            = connector_operator.value.veeva
          zendesk          = connector_operator.value.zendesk
        }
      }
      destination_field = task.value.destination_field
      source_fields     = task.value.source_fields
      task_properties   = task.value.task_properties
      task_type         = task.value.task_type
    }
  }

  trigger_config {
    dynamic "trigger_properties" {
      for_each = each.value.trigger_config.trigger_properties != null ? [each.value.trigger_config.trigger_properties] : []
      content {
        dynamic "scheduled" {
          for_each = trigger_properties.value.scheduled != null ? [trigger_properties.value.scheduled] : []
          content {
            data_pull_mode       = scheduled.value.data_pull_mode
            first_execution_from = scheduled.value.first_execution_from
            schedule_end_time    = scheduled.value.schedule_end_time
            schedule_expression  = scheduled.value.schedule_expression
            schedule_offset      = scheduled.value.schedule_offset
            schedule_start_time  = scheduled.value.schedule_start_time
            timezone             = scheduled.value.timezone
          }
        }
      }
    }
    trigger_type = each.value.trigger_config.trigger_type
  }

  dynamic "metadata_catalog_config" {
    for_each = each.value.metadata_catalog_config != null ? [each.value.metadata_catalog_config] : []
    content {
      dynamic "glue_data_catalog" {
        for_each = metadata_catalog_config.value.glue_data_catalog != null ? [metadata_catalog_config.value.glue_data_catalog] : []
        content {
          database_name = glue_data_catalog.value.database_name
          role_arn      = glue_data_catalog.value.role_arn
          table_prefix  = glue_data_catalog.value.table_prefix
        }
      }
    }
  }
}

