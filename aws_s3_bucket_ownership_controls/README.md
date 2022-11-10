
# Primitive Module: aws_s3_bucket_ownership_controls

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_ownership_controls`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage S3 Bucket Ownership Controls. For more information, see the [S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_ownership_controls
  values:
    bucket: << id of an aws_s3_bucket >>
    rule:
    - object_ownership: BucketOwnerPreferred
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls#argument-reference) for the arguments accepted by the `aws_s3_bucket_ownership_controls` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls#attributes-reference) for the attributes exported by the `aws_s3_bucket_ownership_controls` resource.
