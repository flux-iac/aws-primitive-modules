######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appflow_connector_profile
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    connection_mode = optional(string)
    connector_label = optional(string)
    connector_profile_config = optional(list(object({
        connector_profile_credentials = optional(list(object({
            dynatrace = optional(list(object({
                api_token = optional(string)
            })))
            infor_nexus = optional(list(object({
                access_key_id = optional(string)
                datakey = optional(string)
                secret_access_key = optional(string)
                user_id = optional(string)
            })))
            redshift = optional(list(object({
                password = optional(string)
                username = optional(string)
            })))
            service_now = optional(list(object({
                password = optional(string)
                username = optional(string)
            })))
            snowflake = optional(list(object({
                password = optional(string)
                username = optional(string)
            })))
            zendesk = optional(list(object({
                access_token = optional(string)
                client_id = optional(string)
                client_secret = optional(string)
                oauth_request = optional(list(object({
                    auth_code = optional(string)
                    redirect_uri = optional(string)
                })))
            })))
            custom_connector = optional(list(object({
                api_key = optional(list(object({
                    api_key = optional(string)
                    api_secret_key = optional(string)
                })))
                authentication_type = optional(string)
                basic = optional(list(object({
                    password = optional(string)
                    username = optional(string)
                })))
                custom = optional(list(object({
                    credentials_map = optional(map(string))
                    custom_authentication_type = optional(string)
                })))
                oauth2 = optional(list(object({
                    refresh_token = optional(string)
                    access_token = optional(string)
                    client_id = optional(string)
                    client_secret = optional(string)
                    oauth_request = optional(list(object({
                        auth_code = optional(string)
                        redirect_uri = optional(string)
                    })))
                })))
            })))
            datadog = optional(list(object({
                api_key = optional(string)
                application_key = optional(string)
            })))
            google_analytics = optional(list(object({
                access_token = optional(string)
                client_id = optional(string)
                client_secret = optional(string)
                oauth_request = optional(list(object({
                    auth_code = optional(string)
                    redirect_uri = optional(string)
                })))
                refresh_token = optional(string)
            })))
            honeycode = optional(list(object({
                refresh_token = optional(string)
                access_token = optional(string)
                oauth_request = optional(list(object({
                    auth_code = optional(string)
                    redirect_uri = optional(string)
                })))
            })))
            singular = optional(list(object({
                api_key = optional(string)
            })))
            veeva = optional(list(object({
                password = optional(string)
                username = optional(string)
            })))
            amplitude = optional(list(object({
                secret_key = optional(string)
                api_key = optional(string)
            })))
            salesforce = optional(list(object({
                refresh_token = optional(string)
                access_token = optional(string)
                client_credentials_arn = optional(string)
                oauth_request = optional(list(object({
                    auth_code = optional(string)
                    redirect_uri = optional(string)
                })))
            })))
            sapo_data = optional(list(object({
                basic_auth_credentials = optional(list(object({
                    password = optional(string)
                    username = optional(string)
                })))
                oauth_credentials = optional(list(object({
                    access_token = optional(string)
                    client_id = optional(string)
                    client_secret = optional(string)
                    oauth_request = optional(list(object({
                        auth_code = optional(string)
                        redirect_uri = optional(string)
                    })))
                    refresh_token = optional(string)
                })))
            })))
            slack = optional(list(object({
                access_token = optional(string)
                client_id = optional(string)
                client_secret = optional(string)
                oauth_request = optional(list(object({
                    auth_code = optional(string)
                    redirect_uri = optional(string)
                })))
            })))
            trendmicro = optional(list(object({
                api_secret_key = optional(string)
            })))
            marketo = optional(list(object({
                access_token = optional(string)
                client_id = optional(string)
                client_secret = optional(string)
                oauth_request = optional(list(object({
                    auth_code = optional(string)
                    redirect_uri = optional(string)
                })))
            })))
        })))
        connector_profile_properties = optional(list(object({
            amplitude = optional(list(object({
            })))
            dynatrace = optional(list(object({
                instance_url = optional(string)
            })))
            singular = optional(list(object({
            })))
            infor_nexus = optional(list(object({
                instance_url = optional(string)
            })))
            salesforce = optional(list(object({
                instance_url = optional(string)
                is_sandbox_environment = optional(bool)
            })))
            slack = optional(list(object({
                instance_url = optional(string)
            })))
            trendmicro = optional(list(object({
            })))
            datadog = optional(list(object({
                instance_url = optional(string)
            })))
            honeycode = optional(list(object({
            })))
            zendesk = optional(list(object({
                instance_url = optional(string)
            })))
            snowflake = optional(list(object({
                stage = optional(string)
                warehouse = optional(string)
                account_name = optional(string)
                bucket_name = optional(string)
                bucket_prefix = optional(string)
                private_link_service_name = optional(string)
                region = optional(string)
            })))
            veeva = optional(list(object({
                instance_url = optional(string)
            })))
            custom_connector = optional(list(object({
                oauth2_properties = optional(list(object({
                    token_url_custom_properties = optional(map(string))
                    oauth2_grant_type = optional(string)
                    token_url = optional(string)
                })))
                profile_properties = optional(map(string))
            })))
            google_analytics = optional(list(object({
            })))
            marketo = optional(list(object({
                instance_url = optional(string)
            })))
            redshift = optional(list(object({
                database_url = optional(string)
                role_arn = optional(string)
                bucket_name = optional(string)
                bucket_prefix = optional(string)
            })))
            sapo_data = optional(list(object({
                private_link_service_name = optional(string)
                application_host_url = optional(string)
                application_service_path = optional(string)
                client_number = optional(string)
                logon_language = optional(string)
                oauth_properties = optional(list(object({
                    auth_code_url = optional(string)
                    oauth_scopes = optional(list(string))
                    token_url = optional(string)
                })))
                port_number = optional(number)
            })))
            service_now = optional(list(object({
                instance_url = optional(string)
            })))
        })))
    })))
    connector_type = optional(string)
    kms_arn = optional(string)
    name = optional(string)
  })
}

resource "aws_appflow_connector_profile" "this" {

  {{- if $.Values.connection_mode }}
  connection_mode = var.values.connection_mode
  {{- end }}
  {{- if $.Values.connector_label }}
  connector_label = var.values.connector_label
  {{- end }}
  {{- if $.Values.connector_profile_config }}
  connector_profile_config = var.values.connector_profile_config
  {{- end }}
  {{- if $.Values.connector_type }}
  connector_type = var.values.connector_type
  {{- end }}
  {{- if $.Values.kms_arn }}
  kms_arn = var.values.kms_arn
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}


  {{- if $.Values.count }}
  count = {{ $.Values.count }}
  {{- end }}

  {{- if $.Values.lifecycle }}
  lifecycle {
    {{- if $.Values.lifecycle.create_before_destroy }}
    create_before_destroy = {{ $.Values.lifecycle.create_before_destroy }}
    {{- end }}
    {{- if $.Values.lifecycle.ignore_changes }}
    prevent_destroy = {{ $.Values.lifecycle.prevent_destroy }}
    {{- end }}
    {{- if $.Values.lifecycle.ignore_changes }}
    ignore_changes = {{ $.Values.lifecycle.ignore_changes }}
    {{- end }}
  }
  {{- end }}
}


output "arn" {
    value = aws_appflow_connector_profile.this.arn
}

output "credentials_arn" {
    value = aws_appflow_connector_profile.this.credentials_arn
}

output "kms_arn" {
    value = aws_appflow_connector_profile.this.kms_arn
}

