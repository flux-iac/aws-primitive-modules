
# Primitive Module: aws_s3_bucket_request_payment_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_request_payment_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_request_payment_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an S3 bucket request payment configuration resource. For more information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).

~> **NOTE:** Destroying an `aws_s3_bucket_request_payment_configuration` resource resets the bucket's `payer` to the S3 default: the bucket owner.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_request_payment_configuration
  values:
    bucket: << bucket of an aws_s3_bucket >>
    payer: Requester
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_request_payment_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_request_payment_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_request_payment_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_request_payment_configuration` resource.
