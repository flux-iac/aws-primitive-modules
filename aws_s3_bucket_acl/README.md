
# Primitive Module: aws_s3_bucket_acl

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_acl`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl). **The example below still needs to be tested and validated**.

## Description

Provides an S3 bucket ACL resource.

~> **Note:** `terraform destroy` does not delete the S3 Bucket ACL but does remove the resource from Terraform state.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-bucket-acl
  namespace: flux-system
spec:
  path: aws_s3_bucket_acl
  values:
    acl: private
    bucket: << id of an aws_s3_bucket >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl#argument-reference) for the arguments accepted by the `aws_s3_bucket_acl` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl#attributes-reference) for the attributes exported by the `aws_s3_bucket_acl` resource.
