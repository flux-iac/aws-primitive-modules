
# Primitive Module: aws_s3_bucket_policy

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy). **The example below still needs to be tested and validated**.

## Description

Attaches a policy to an S3 bucket resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: allow-access-from-another-account
  namespace: flux-system
spec:
  path: aws_s3_bucket_policy
  values:
    bucket: << id of an aws_s3_bucket >>
    policy: << allow_access_from_another_account.json of a data >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy#argument-reference) for the arguments accepted by the `aws_s3_bucket_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy#attributes-reference) for the attributes exported by the `aws_s3_bucket_policy` resource.
