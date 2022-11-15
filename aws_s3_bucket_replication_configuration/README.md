
# Primitive Module: aws_s3_bucket_replication_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_replication_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_replication_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an independent configuration resource for S3 bucket [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html).

~> **NOTE:** S3 Buckets only support a single replication configuration. Declaring multiple `aws_s3_bucket_replication_configuration` resources to the same S3 Bucket will cause a perpetual difference in configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: replication
  namespace: flux-system
spec:
  path: aws_s3_bucket_replication_configuration
  values:
    bucket: << id of an aws_s3_bucket >>
    provider: aws.central
    role: << arn of an aws_iam_role >>
    rule:
    - destination:
      - bucket: << arn of an aws_s3_bucket >>
        storage_class: STANDARD
      filter:
      - prefix: foo
      id: foobar
      status: Enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_replication_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_replication_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_replication_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_replication_configuration` resource.
