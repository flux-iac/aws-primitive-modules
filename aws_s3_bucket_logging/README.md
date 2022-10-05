
# Primitive Module: aws_s3_bucket_logging

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_logging`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging). **The example below still needs to be tested and validated**.

## Description

Provides an S3 bucket (server access) logging resource. For more information, see [Logging requests using server access logging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
in the AWS S3 User Guide.

~> **Note:** Amazon S3 supports server access logging, AWS CloudTrail, or a combination of both. Refer to the [Logging options for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/logging-with-S3.html)
to decide which method meets your requirements.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_logging
  values:
    bucket: << id of an aws_s3_bucket >>
    target_bucket: << id of an aws_s3_bucket >>
    target_prefix: log/
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging#argument-reference) for the arguments accepted by the `aws_s3_bucket_logging` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging#attributes-reference) for the attributes exported by the `aws_s3_bucket_logging` resource.
