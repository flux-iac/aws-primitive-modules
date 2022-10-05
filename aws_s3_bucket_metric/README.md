
# Primitive Module: aws_s3_bucket_metric

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_metric`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_metric). **The example below still needs to be tested and validated**.

## Description

Provides a S3 bucket [metrics configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html) resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-entire-bucket
  namespace: flux-system
spec:
  path: aws_s3_bucket_metric
  values:
    bucket: << bucket of an aws_s3_bucket >>
    name: EntireBucket
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_metric#argument-reference) for the arguments accepted by the `aws_s3_bucket_metric` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_metric#attributes-reference) for the attributes exported by the `aws_s3_bucket_metric` resource.
