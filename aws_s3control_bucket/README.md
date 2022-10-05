
# Primitive Module: aws_s3control_bucket

This is the Weave TF-controller primitive module for the resource `aws_s3control_bucket`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Control Bucket.

-> This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Buckets in an AWS Partition, see the [`aws_s3_bucket` resource](/docs/providers/aws/r/s3_bucket.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_bucket
  values:
    bucket: example
    outpost_id: << example.id of a data >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket#argument-reference) for the arguments accepted by the `aws_s3control_bucket` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket#attributes-reference) for the attributes exported by the `aws_s3control_bucket` resource.
