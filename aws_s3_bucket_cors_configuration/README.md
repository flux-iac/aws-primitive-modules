
# Primitive Module: aws_s3_bucket_cors_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_cors_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an S3 bucket CORS configuration resource. For more information about CORS, go to [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html) in the Amazon S3 User Guide.

~> **NOTE:** S3 Buckets only support a single CORS configuration. Declaring multiple `aws_s3_bucket_cors_configuration` resources to the same S3 Bucket will cause a perpetual difference in configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_cors_configuration
  values:
    bucket: << id of an aws_s3_bucket >>
    cors_rule:
    - allowed_headers:
      - '*'
      allowed_methods:
      - PUT
      - POST
      allowed_origins:
      - https://s3-website-test.hashicorp.com
      expose_headers:
      - ETag
      max_age_seconds: 3000
    - allowed_methods:
      - GET
      allowed_origins:
      - '*'
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_cors_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_cors_configuration` resource.
