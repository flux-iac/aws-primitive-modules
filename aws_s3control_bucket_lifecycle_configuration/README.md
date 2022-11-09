
# Primitive Module: aws_s3control_bucket_lifecycle_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3control_bucket_lifecycle_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket_lifecycle_configuration). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Control Bucket Lifecycle Configuration.

~> **NOTE:** Each S3 Control Bucket can only have one Lifecycle Configuration. Using multiple of this resource against the same S3 Control Bucket will result in perpetual differences each Terraform run.

-> This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Bucket Lifecycle Configurations in an AWS Partition, see the [`aws_s3_bucket` resource](/docs/providers/aws/r/s3_bucket.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_bucket_lifecycle_configuration
  values:
    bucket: << arn of an aws_s3control_bucket >>
    rule:
    - expiration:
      - days: 365
      filter:
      - prefix: logs/
      id: logs
    - expiration:
      - days: 7
      filter:
      - prefix: temp/
      id: temp
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket_lifecycle_configuration#argument-reference) for the arguments accepted by the `aws_s3control_bucket_lifecycle_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket_lifecycle_configuration#attributes-reference) for the attributes exported by the `aws_s3control_bucket_lifecycle_configuration` resource.
