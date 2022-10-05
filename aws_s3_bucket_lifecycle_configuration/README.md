
# Primitive Module: aws_s3_bucket_lifecycle_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_lifecycle_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an independent configuration resource for S3 bucket [lifecycle configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).

An S3 Lifecycle configuration consists of one or more Lifecycle rules. Each rule consists of the following:

* Rule metadata (`id` and `status`)
* [Filter](#filter) identifying objects to which the rule applies
* One or more transition or expiration actions

For more information see the Amazon S3 User Guide on [`Lifecycle Configuration Elements`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html).

~> **NOTE:** S3 Buckets only support a single lifecycle configuration. Declaring multiple `aws_s3_bucket_lifecycle_configuration` resources to the same S3 Bucket will cause a perpetual difference in configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_lifecycle_configuration
  values:
    bucket: << id of an aws_s3_bucket >>
    rule:
      id: rule-1
      status: Enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_lifecycle_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_lifecycle_configuration` resource.
