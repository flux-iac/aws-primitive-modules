
# Primitive Module: aws_s3_bucket_server_side_encryption_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_server_side_encryption_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration). **The example below still needs to be tested and validated**.

## Description

Provides a S3 bucket server-side encryption configuration resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_server_side_encryption_configuration
  values:
    bucket: << bucket of an aws_s3_bucket >>
    rule:
      apply_server_side_encryption_by_default:
        kms_master_key_id: << arn of an aws_kms_key >>
        sse_algorithm: aws:kms
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_server_side_encryption_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_server_side_encryption_configuration` resource.
