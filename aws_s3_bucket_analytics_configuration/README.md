
# Primitive Module: aws_s3_bucket_analytics_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_analytics_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_analytics_configuration). **The example below still needs to be tested and validated**.

## Description

Provides a S3 bucket [analytics configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html) resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-entire-bucket
  namespace: flux-system
spec:
  path: aws_s3_bucket_analytics_configuration
  values:
    bucket: << bucket of an aws_s3_bucket >>
    name: EntireBucket
    storage_class_analysis:
    - data_export:
      - destination:
        - s3_bucket_destination:
          - bucket_arn: << arn of an aws_s3_bucket >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_analytics_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_analytics_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_analytics_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_analytics_configuration` resource.
