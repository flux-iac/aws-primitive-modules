
# Primitive Module: aws_s3control_storage_lens_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3control_storage_lens_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_storage_lens_configuration). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Storage Lens configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_storage_lens_configuration
  values:
    config_id: example-1
    storage_lens_configuration:
    - account_level:
      - activity_metrics:
        - enabled: true
        bucket_level:
        - activity_metrics:
          - enabled: true
      data_export:
      - cloud_watch_metrics:
        - enabled: true
        s3_bucket_destination:
        - account_id: << current.account_id of a data >>
          arn: << arn of an aws_s3_bucket >>
          encryption:
          - sse_s3:
            - {}
          format: CSV
          output_schema_version: V_1
      enabled: true
      exclude:
      - buckets:
        - << arn of an aws_s3_bucket >>
        - << arn of an aws_s3_bucket >>
        regions:
        - us-east-2
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_storage_lens_configuration#argument-reference) for the arguments accepted by the `aws_s3control_storage_lens_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_storage_lens_configuration#attributes-reference) for the attributes exported by the `aws_s3control_storage_lens_configuration` resource.
