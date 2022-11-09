
# Primitive Module: aws_s3_bucket_intelligent_tiering_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_intelligent_tiering_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_intelligent_tiering_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an [S3 Intelligent-Tiering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering.html) configuration resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-entire-bucket
  namespace: flux-system
spec:
  path: aws_s3_bucket_intelligent_tiering_configuration
  values:
    bucket: << bucket of an aws_s3_bucket >>
    name: EntireBucket
    tiering:
    - access_tier: DEEP_ARCHIVE_ACCESS
      days: 180
    - access_tier: ARCHIVE_ACCESS
      days: 125
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_intelligent_tiering_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_intelligent_tiering_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_intelligent_tiering_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_intelligent_tiering_configuration` resource.
