
# Primitive Module: aws_s3_bucket_public_access_block

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_public_access_block`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block). **The example below still needs to be tested and validated**.

## Description

Manages S3 bucket-level Public Access Block configuration. For more information about these settings, see the [AWS S3 Block Public Access documentation](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_public_access_block
  values:
    block_public_acls: true
    block_public_policy: true
    bucket: << id of an aws_s3_bucket >>
    ignore_public_acls: true
    restrict_public_buckets: true
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block#argument-reference) for the arguments accepted by the `aws_s3_bucket_public_access_block` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block#attributes-reference) for the attributes exported by the `aws_s3_bucket_public_access_block` resource.
