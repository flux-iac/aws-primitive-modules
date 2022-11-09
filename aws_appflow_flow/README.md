
# Primitive Module: aws_appflow_flow

This is the Weave TF-controller primitive module for the resource `aws_appflow_flow`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appflow_flow). **The example below still needs to be tested and validated**.

## Description

Provides an AppFlow flow resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appflow_flow
  values:
    destination_flow_config:
      connector_type: S3
      destination_connector_properties:
        s3:
          bucket_name: << bucket of an aws_s3_bucket_policy >>
          s3_output_format_config:
            prefix_config:
              prefix_type: PATH
    name: example
    source_flow_config:
      connector_type: S3
      source_connector_properties:
        s3:
          bucket_name: << bucket of an aws_s3_bucket_policy >>
          bucket_prefix: example
    task:
      connector_operator:
        s3: NO_OP
      destination_field: exampleField
      task_type: Map
    trigger_config:
      trigger_type: OnDemand
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appflow_flow#argument-reference) for the arguments accepted by the `aws_appflow_flow` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appflow_flow#attributes-reference) for the attributes exported by the `aws_appflow_flow` resource.
