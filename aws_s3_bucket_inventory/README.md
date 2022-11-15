
# Primitive Module: aws_s3_bucket_inventory

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_inventory`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_inventory). **The example below still needs to be tested and validated**.

## Description

Provides a S3 bucket [inventory configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html) resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_s3_bucket_inventory
  values:
    bucket: << id of an aws_s3_bucket >>
    destination:
    - bucket:
      - bucket_arn: << arn of an aws_s3_bucket >>
        format: ORC
    included_object_versions: All
    name: EntireBucketDaily
    schedule:
    - frequency: Daily
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_inventory#argument-reference) for the arguments accepted by the `aws_s3_bucket_inventory` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_inventory#attributes-reference) for the attributes exported by the `aws_s3_bucket_inventory` resource.
