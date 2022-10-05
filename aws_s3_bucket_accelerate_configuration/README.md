
# Primitive Module: aws_s3_bucket_accelerate_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_accelerate_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an S3 bucket accelerate configuration resource. See the [Requirements for using Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html#transfer-acceleration-requirements) for more details.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_accelerate_configuration
  values:
    bucket: << bucket of an aws_s3_bucket >>
    status: Enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_accelerate_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_accelerate_configuration` resource.
