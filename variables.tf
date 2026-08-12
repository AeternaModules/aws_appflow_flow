variable "appflow_flows" {
  description = <<EOT
Map of appflow_flows, attributes below
Required:
    - name
    - destination_flow_config (block):
        - api_version (optional)
        - connector_profile_name (optional)
        - connector_type (required)
        - destination_connector_properties (required, block):
            - custom_connector (optional, block):
                - custom_properties (optional)
                - entity_name (required)
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - id_field_names (optional)
                - write_operation_type (optional)
            - customer_profiles (optional, block):
                - domain_name (required)
                - object_type_name (optional)
            - event_bridge (optional, block):
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - object (required)
            - honeycode (optional, block):
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - object (required)
            - lookout_metrics (optional, block):
            - marketo (optional, block):
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - object (required)
            - redshift (optional, block):
                - bucket_prefix (optional)
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - intermediate_bucket_name (required)
                - object (required)
            - s3 (optional, block):
                - bucket_name (required)
                - bucket_prefix (optional)
                - s3_output_format_config (optional, block):
                    - aggregation_config (optional, block):
                        - aggregation_type (optional)
                        - target_file_size (optional)
                    - file_type (optional)
                    - prefix_config (optional, block):
                        - prefix_format (optional)
                        - prefix_hierarchy (optional)
                        - prefix_type (optional)
                    - preserve_source_data_typing (optional)
            - salesforce (optional, block):
                - data_transfer_api (optional)
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - id_field_names (optional)
                - object (required)
                - write_operation_type (optional)
            - sapo_data (optional, block):
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - id_field_names (optional)
                - object_path (required)
                - success_response_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                - write_operation_type (optional)
            - snowflake (optional, block):
                - bucket_prefix (optional)
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - intermediate_bucket_name (required)
                - object (required)
            - upsolver (optional, block):
                - bucket_name (required)
                - bucket_prefix (optional)
                - s3_output_format_config (required, block):
                    - aggregation_config (optional, block):
                        - aggregation_type (optional)
                    - file_type (optional)
                    - prefix_config (required, block):
                        - prefix_format (optional)
                        - prefix_hierarchy (optional)
                        - prefix_type (required)
            - zendesk (optional, block):
                - error_handling_config (optional, block):
                    - bucket_name (optional)
                    - bucket_prefix (optional)
                    - fail_on_first_destination_error (optional)
                - id_field_names (optional)
                - object (required)
                - write_operation_type (optional)
    - source_flow_config (block):
        - api_version (optional)
        - connector_profile_name (optional)
        - connector_type (required)
        - incremental_pull_config (optional, block):
            - datetime_type_field_name (optional)
        - source_connector_properties (required, block):
            - amplitude (optional, block):
                - object (required)
            - custom_connector (optional, block):
                - custom_properties (optional)
                - entity_name (required)
            - datadog (optional, block):
                - object (required)
            - dynatrace (optional, block):
                - object (required)
            - google_analytics (optional, block):
                - object (required)
            - infor_nexus (optional, block):
                - object (required)
            - marketo (optional, block):
                - object (required)
            - s3 (optional, block):
                - bucket_name (required)
                - bucket_prefix (required)
                - s3_input_format_config (optional, block):
                    - s3_input_file_type (optional)
            - salesforce (optional, block):
                - data_transfer_api (optional)
                - enable_dynamic_field_update (optional)
                - include_deleted_records (optional)
                - object (required)
            - sapo_data (optional, block):
                - object_path (required)
                - pagination_config (optional, block):
                    - max_page_size (required)
                - parallelism_config (optional, block):
                    - max_page_size (required)
            - service_now (optional, block):
                - object (required)
            - singular (optional, block):
                - object (required)
            - slack (optional, block):
                - object (required)
            - trendmicro (optional, block):
                - object (required)
            - veeva (optional, block):
                - document_type (optional)
                - include_all_versions (optional)
                - include_renditions (optional)
                - include_source_files (optional)
                - object (required)
            - zendesk (optional, block):
                - object (required)
    - task (block):
        - connector_operator (optional, block):
            - amplitude (optional)
            - custom_connector (optional)
            - datadog (optional)
            - dynatrace (optional)
            - google_analytics (optional)
            - infor_nexus (optional)
            - marketo (optional)
            - s3 (optional)
            - salesforce (optional)
            - sapo_data (optional)
            - service_now (optional)
            - singular (optional)
            - slack (optional)
            - trendmicro (optional)
            - veeva (optional)
            - zendesk (optional)
        - destination_field (optional)
        - source_fields (optional)
        - task_properties (optional)
        - task_type (required)
    - trigger_config (block):
        - trigger_properties (optional, block):
            - scheduled (optional, block):
                - data_pull_mode (optional)
                - first_execution_from (optional)
                - schedule_end_time (optional)
                - schedule_expression (required)
                - schedule_offset (optional)
                - schedule_start_time (optional)
                - timezone (optional)
        - trigger_type (required)
Optional:
    - description
    - kms_arn
    - region
    - tags
    - tags_all
    - metadata_catalog_config (block):
        - glue_data_catalog (optional, block):
            - database_name (required)
            - role_arn (required)
            - table_prefix (required)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    kms_arn     = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    destination_flow_config = list(object({
      api_version            = optional(string)
      connector_profile_name = optional(string)
      connector_type         = string
      destination_connector_properties = object({
        custom_connector = optional(object({
          custom_properties = optional(map(string))
          entity_name       = string
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          id_field_names       = optional(list(string))
          write_operation_type = optional(string)
        }))
        customer_profiles = optional(object({
          domain_name      = string
          object_type_name = optional(string)
        }))
        event_bridge = optional(object({
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          object = string
        }))
        honeycode = optional(object({
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          object = string
        }))
        lookout_metrics = optional(object({
        }))
        marketo = optional(object({
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          object = string
        }))
        redshift = optional(object({
          bucket_prefix = optional(string)
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          intermediate_bucket_name = string
          object                   = string
        }))
        s3 = optional(object({
          bucket_name   = string
          bucket_prefix = optional(string)
          s3_output_format_config = optional(object({
            aggregation_config = optional(object({
              aggregation_type = optional(string)
              target_file_size = optional(number)
            }))
            file_type = optional(string)
            prefix_config = optional(object({
              prefix_format    = optional(string)
              prefix_hierarchy = optional(list(string))
              prefix_type      = optional(string)
            }))
            preserve_source_data_typing = optional(bool)
          }))
        }))
        salesforce = optional(object({
          data_transfer_api = optional(string)
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          id_field_names       = optional(list(string))
          object               = string
          write_operation_type = optional(string)
        }))
        sapo_data = optional(object({
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          id_field_names = optional(list(string))
          object_path    = string
          success_response_handling_config = optional(object({
            bucket_name   = optional(string)
            bucket_prefix = optional(string)
          }))
          write_operation_type = optional(string)
        }))
        snowflake = optional(object({
          bucket_prefix = optional(string)
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          intermediate_bucket_name = string
          object                   = string
        }))
        upsolver = optional(object({
          bucket_name   = string
          bucket_prefix = optional(string)
          s3_output_format_config = object({
            aggregation_config = optional(object({
              aggregation_type = optional(string)
            }))
            file_type = optional(string)
            prefix_config = object({
              prefix_format    = optional(string)
              prefix_hierarchy = optional(list(string))
              prefix_type      = string
            })
          })
        }))
        zendesk = optional(object({
          error_handling_config = optional(object({
            bucket_name                     = optional(string)
            bucket_prefix                   = optional(string)
            fail_on_first_destination_error = optional(bool)
          }))
          id_field_names       = optional(list(string))
          object               = string
          write_operation_type = optional(string)
        }))
      })
    }))
    source_flow_config = object({
      api_version            = optional(string)
      connector_profile_name = optional(string)
      connector_type         = string
      incremental_pull_config = optional(object({
        datetime_type_field_name = optional(string)
      }))
      source_connector_properties = object({
        amplitude = optional(object({
          object = string
        }))
        custom_connector = optional(object({
          custom_properties = optional(map(string))
          entity_name       = string
        }))
        datadog = optional(object({
          object = string
        }))
        dynatrace = optional(object({
          object = string
        }))
        google_analytics = optional(object({
          object = string
        }))
        infor_nexus = optional(object({
          object = string
        }))
        marketo = optional(object({
          object = string
        }))
        s3 = optional(object({
          bucket_name   = string
          bucket_prefix = string
          s3_input_format_config = optional(object({
            s3_input_file_type = optional(string)
          }))
        }))
        salesforce = optional(object({
          data_transfer_api           = optional(string)
          enable_dynamic_field_update = optional(bool)
          include_deleted_records     = optional(bool)
          object                      = string
        }))
        sapo_data = optional(object({
          object_path = string
          pagination_config = optional(object({
            max_page_size = number
          }))
          parallelism_config = optional(object({
            max_page_size = number
          }))
        }))
        service_now = optional(object({
          object = string
        }))
        singular = optional(object({
          object = string
        }))
        slack = optional(object({
          object = string
        }))
        trendmicro = optional(object({
          object = string
        }))
        veeva = optional(object({
          document_type        = optional(string)
          include_all_versions = optional(bool)
          include_renditions   = optional(bool)
          include_source_files = optional(bool)
          object               = string
        }))
        zendesk = optional(object({
          object = string
        }))
      })
    })
    task = list(object({
      connector_operator = optional(list(object({
        amplitude        = optional(string)
        custom_connector = optional(string)
        datadog          = optional(string)
        dynatrace        = optional(string)
        google_analytics = optional(string)
        infor_nexus      = optional(string)
        marketo          = optional(string)
        s3               = optional(string)
        salesforce       = optional(string)
        sapo_data        = optional(string)
        service_now      = optional(string)
        singular         = optional(string)
        slack            = optional(string)
        trendmicro       = optional(string)
        veeva            = optional(string)
        zendesk          = optional(string)
      })))
      destination_field = optional(string)
      source_fields     = optional(list(string))
      task_properties   = optional(map(string))
      task_type         = string
    }))
    trigger_config = object({
      trigger_properties = optional(object({
        scheduled = optional(object({
          data_pull_mode       = optional(string)
          first_execution_from = optional(string)
          schedule_end_time    = optional(string)
          schedule_expression  = string
          schedule_offset      = optional(number)
          schedule_start_time  = optional(string)
          timezone             = optional(string)
        }))
      }))
      trigger_type = string
    })
    metadata_catalog_config = optional(object({
      glue_data_catalog = optional(object({
        database_name = string
        role_arn      = string
        table_prefix  = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        length(v.destination_flow_config) >= 1
      )
    ])
    error_message = "Each destination_flow_config list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        length(v.task) >= 1
      )
    ])
    error_message = "Each task list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.api_version == null || ((can(regex("\\S+", item.api_version))) && (length(item.api_version) >= 1 && length(item.api_version) <= 256)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.connector_profile_name == null || ((can(regex("[\\w\\/!@#+=.-]+", item.connector_profile_name))) && (length(item.connector_profile_name) >= 1 && length(item.connector_profile_name) <= 256)))])
      )
    ])
    error_message = "all of: must contain only alphanumeric, underscore (_), forward slash (/), exclamation point (!), at sign (@), number sign (#), plus sign (+), equals sign (=), period (.), and hyphen (-) characters; must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.custom_connector == null || (item.destination_connector_properties.custom_connector.custom_properties == null || (alltrue([for x in item.destination_connector_properties.custom_connector.custom_properties : (can(regex("\\S+", x))) && (length(x) >= 0 && length(x) <= 2048)]))))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 0 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.custom_connector == null || ((can(regex("\\S+", item.destination_connector_properties.custom_connector.entity_name))) && (length(item.destination_connector_properties.custom_connector.entity_name) >= 1 && length(item.destination_connector_properties.custom_connector.entity_name) <= 1024)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.custom_connector == null || (item.destination_connector_properties.custom_connector.id_field_names == null || (alltrue([for x in item.destination_connector_properties.custom_connector.id_field_names : (can(regex("\\S+", x))) && (length(x) >= 0 && length(x) <= 128)]))))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.customer_profiles == null || (item.destination_connector_properties.customer_profiles.object_type_name == null || ((can(regex("\\S+", item.destination_connector_properties.customer_profiles.object_type_name))) && (length(item.destination_connector_properties.customer_profiles.object_type_name) >= 0 && length(item.destination_connector_properties.customer_profiles.object_type_name) <= 255))))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 0 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.event_bridge == null || ((can(regex("\\S+", item.destination_connector_properties.event_bridge.object))) && (length(item.destination_connector_properties.event_bridge.object) >= 1 && length(item.destination_connector_properties.event_bridge.object) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.honeycode == null || ((can(regex("\\S+", item.destination_connector_properties.honeycode.object))) && (length(item.destination_connector_properties.honeycode.object) >= 1 && length(item.destination_connector_properties.honeycode.object) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.marketo == null || ((can(regex("\\S+", item.destination_connector_properties.marketo.object))) && (length(item.destination_connector_properties.marketo.object) >= 1 && length(item.destination_connector_properties.marketo.object) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.redshift == null || ((can(regex("\\S+", item.destination_connector_properties.redshift.intermediate_bucket_name))) && (length(item.destination_connector_properties.redshift.intermediate_bucket_name) >= 3 && length(item.destination_connector_properties.redshift.intermediate_bucket_name) <= 63)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 3 and 63 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.redshift == null || ((can(regex("\\S+", item.destination_connector_properties.redshift.object))) && (length(item.destination_connector_properties.redshift.object) >= 1 && length(item.destination_connector_properties.redshift.object) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.salesforce == null || (item.destination_connector_properties.salesforce.id_field_names == null || (alltrue([for x in item.destination_connector_properties.salesforce.id_field_names : (can(regex("\\S+", x))) && (length(x) >= 0 && length(x) <= 128)]))))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.salesforce == null || ((can(regex("\\S+", item.destination_connector_properties.salesforce.object))) && (length(item.destination_connector_properties.salesforce.object) >= 1 && length(item.destination_connector_properties.salesforce.object) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.sapo_data == null || (item.destination_connector_properties.sapo_data.id_field_names == null || (alltrue([for x in item.destination_connector_properties.sapo_data.id_field_names : (can(regex("\\S+", x))) && (length(x) >= 0 && length(x) <= 128)]))))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.sapo_data == null || ((can(regex("\\S+", item.destination_connector_properties.sapo_data.object_path))) && (length(item.destination_connector_properties.sapo_data.object_path) >= 1 && length(item.destination_connector_properties.sapo_data.object_path) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.snowflake == null || ((can(regex("\\S+", item.destination_connector_properties.snowflake.intermediate_bucket_name))) && (length(item.destination_connector_properties.snowflake.intermediate_bucket_name) >= 3 && length(item.destination_connector_properties.snowflake.intermediate_bucket_name) <= 63)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 3 and 63 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.snowflake == null || ((can(regex("\\S+", item.destination_connector_properties.snowflake.object))) && (length(item.destination_connector_properties.snowflake.object) >= 1 && length(item.destination_connector_properties.snowflake.object) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.zendesk == null || (item.destination_connector_properties.zendesk.id_field_names == null || (alltrue([for x in item.destination_connector_properties.zendesk.id_field_names : (can(regex("\\S+", x))) && (length(x) >= 0 && length(x) <= 128)]))))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.destination_flow_config : (item.destination_connector_properties.zendesk == null || ((can(regex("\\S+", item.destination_connector_properties.zendesk.object))) && (length(item.destination_connector_properties.zendesk.object) >= 1 && length(item.destination_connector_properties.zendesk.object) <= 512)))])
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.kms_arn == null || (can(regex("arn:.*:kms:.*:[0-9]+:.*", v.kms_arn)))
      )
    ])
    error_message = "must be a valid ARN of a Key Management Services (KMS) key"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.api_version == null || ((can(regex("\\S+", v.source_flow_config.api_version))) && (length(v.source_flow_config.api_version) >= 1 && length(v.source_flow_config.api_version) <= 256))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.connector_profile_name == null || ((can(regex("[\\w\\/!@#+=.-]+", v.source_flow_config.connector_profile_name))) && (length(v.source_flow_config.connector_profile_name) >= 1 && length(v.source_flow_config.connector_profile_name) <= 256))
      )
    ])
    error_message = "all of: must contain only alphanumeric, underscore (_), forward slash (/), exclamation point (!), at sign (@), number sign (#), plus sign (+), equals sign (=), period (.), and hyphen (-) characters; must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.incremental_pull_config == null || (v.source_flow_config.incremental_pull_config.datetime_type_field_name == null || (length(v.source_flow_config.incremental_pull_config.datetime_type_field_name) >= 0 && length(v.source_flow_config.incremental_pull_config.datetime_type_field_name) <= 256))
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.amplitude == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.amplitude.object))) && (length(v.source_flow_config.source_connector_properties.amplitude.object) >= 1 && length(v.source_flow_config.source_connector_properties.amplitude.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.custom_connector == null || (v.source_flow_config.source_connector_properties.custom_connector.custom_properties == null || (alltrue([for x in v.source_flow_config.source_connector_properties.custom_connector.custom_properties : (can(regex("\\S+", x))) && (length(x) >= 0 && length(x) <= 2048)])))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 0 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.custom_connector == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.custom_connector.entity_name))) && (length(v.source_flow_config.source_connector_properties.custom_connector.entity_name) >= 1 && length(v.source_flow_config.source_connector_properties.custom_connector.entity_name) <= 1024))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.datadog == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.datadog.object))) && (length(v.source_flow_config.source_connector_properties.datadog.object) >= 1 && length(v.source_flow_config.source_connector_properties.datadog.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.dynatrace == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.dynatrace.object))) && (length(v.source_flow_config.source_connector_properties.dynatrace.object) >= 1 && length(v.source_flow_config.source_connector_properties.dynatrace.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.google_analytics == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.google_analytics.object))) && (length(v.source_flow_config.source_connector_properties.google_analytics.object) >= 1 && length(v.source_flow_config.source_connector_properties.google_analytics.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.infor_nexus == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.infor_nexus.object))) && (length(v.source_flow_config.source_connector_properties.infor_nexus.object) >= 1 && length(v.source_flow_config.source_connector_properties.infor_nexus.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.marketo == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.marketo.object))) && (length(v.source_flow_config.source_connector_properties.marketo.object) >= 1 && length(v.source_flow_config.source_connector_properties.marketo.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.salesforce == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.salesforce.object))) && (length(v.source_flow_config.source_connector_properties.salesforce.object) >= 1 && length(v.source_flow_config.source_connector_properties.salesforce.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.sapo_data == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.sapo_data.object_path))) && (length(v.source_flow_config.source_connector_properties.sapo_data.object_path) >= 1 && length(v.source_flow_config.source_connector_properties.sapo_data.object_path) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.sapo_data == null || (v.source_flow_config.source_connector_properties.sapo_data.pagination_config == null || (v.source_flow_config.source_connector_properties.sapo_data.pagination_config.max_page_size >= 1 && v.source_flow_config.source_connector_properties.sapo_data.pagination_config.max_page_size <= 10000))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.sapo_data == null || (v.source_flow_config.source_connector_properties.sapo_data.parallelism_config == null || (v.source_flow_config.source_connector_properties.sapo_data.parallelism_config.max_page_size >= 1 && v.source_flow_config.source_connector_properties.sapo_data.parallelism_config.max_page_size <= 10))
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.service_now == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.service_now.object))) && (length(v.source_flow_config.source_connector_properties.service_now.object) >= 1 && length(v.source_flow_config.source_connector_properties.service_now.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.singular == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.singular.object))) && (length(v.source_flow_config.source_connector_properties.singular.object) >= 1 && length(v.source_flow_config.source_connector_properties.singular.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.slack == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.slack.object))) && (length(v.source_flow_config.source_connector_properties.slack.object) >= 1 && length(v.source_flow_config.source_connector_properties.slack.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.trendmicro == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.trendmicro.object))) && (length(v.source_flow_config.source_connector_properties.trendmicro.object) >= 1 && length(v.source_flow_config.source_connector_properties.trendmicro.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.veeva == null || (v.source_flow_config.source_connector_properties.veeva.document_type == null || ((can(regex("[\\s\\w_-]+", v.source_flow_config.source_connector_properties.veeva.document_type))) && (length(v.source_flow_config.source_connector_properties.veeva.document_type) >= 1 && length(v.source_flow_config.source_connector_properties.veeva.document_type) <= 512)))
      )
    ])
    error_message = "all of: must contain only alphanumeric, underscore (_), and hyphen (-) characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.veeva == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.veeva.object))) && (length(v.source_flow_config.source_connector_properties.veeva.object) >= 1 && length(v.source_flow_config.source_connector_properties.veeva.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.source_flow_config.source_connector_properties.zendesk == null || ((can(regex("\\S+", v.source_flow_config.source_connector_properties.zendesk.object))) && (length(v.source_flow_config.source_connector_properties.zendesk.object) >= 1 && length(v.source_flow_config.source_connector_properties.zendesk.object) <= 512))
      )
    ])
    error_message = "all of: must not contain any whitespace characters; must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.task : (item.destination_field == null || (length(item.destination_field) >= 0 && length(item.destination_field) <= 256))])
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.task : (item.source_fields == null || (alltrue([for x in item.source_fields : length(x) >= 0 && length(x) <= 2048])))])
      )
    ])
    error_message = "must be between 0 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        alltrue([for item in v.task : (item.task_properties == null || (alltrue([for x in item.task_properties : length(x) >= 0 && length(x) <= 2048])))])
      )
    ])
    error_message = "must be between 0 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.trigger_config.trigger_properties == null || (v.trigger_config.trigger_properties.scheduled == null || (v.trigger_config.trigger_properties.scheduled.schedule_offset == null || (v.trigger_config.trigger_properties.scheduled.schedule_offset >= 0 && v.trigger_config.trigger_properties.scheduled.schedule_offset <= 36000)))
      )
    ])
    error_message = "must be between 0 and 36000"
  }
  validation {
    condition = alltrue([
      for k, v in var.appflow_flows : (
        v.trigger_config.trigger_properties == null || (v.trigger_config.trigger_properties.scheduled == null || (v.trigger_config.trigger_properties.scheduled.timezone == null || (length(v.trigger_config.trigger_properties.scheduled.timezone) >= 0 && length(v.trigger_config.trigger_properties.scheduled.timezone) <= 256)))
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  # Note: 76 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

