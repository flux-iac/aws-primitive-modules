
# Primitive Module: aws_s3_bucket

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket). **The example below still needs to be tested and validated**.

## Description

Provides a S3 bucket resource.

-> This functionality is for managing S3 in an AWS Partition. To manage [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html), see the [`aws_s3control_bucket`](/docs/providers/aws/r/s3control_bucket.html) resource.

~> **NOTE on S3 Bucket Accelerate Configuration:** S3 Bucket Accelerate can be configured in either the standalone resource [`aws_s3_bucket_accelerate_configuration`](s3_bucket_accelerate_configuration.html)
or with the deprecated parameter `acceleration_status` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket canned ACL Configuration:** S3 Bucket canned ACL can be configured in either the standalone resource [`aws_s3_bucket_acl`](s3_bucket_acl.html.markdown)
or with the deprecated parameter `acl` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket ACL Grants Configuration:** S3 Bucket grants can be configured in either the standalone resource [`aws_s3_bucket_acl`](s3_bucket_acl.html.markdown)
or with the deprecated parameter `grant` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket CORS Configuration:** S3 Bucket CORS can be configured in either the standalone resource [`aws_s3_bucket_cors_configuration`](s3_bucket_cors_configuration.html.markdown)
or with the deprecated parameter `cors_rule` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Lifecycle Configuration:** S3 Bucket Lifecycle can be configured in either the standalone resource [`aws_s3_bucket_lifecycle_configuration`](s3_bucket_lifecycle_configuration.html)
or with the deprecated parameter `lifecycle_rule` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Logging Configuration:** S3 Bucket logging can be configured in either the standalone resource [`aws_s3_bucket_logging`](s3_bucket_logging.html.markdown)
or with the deprecated parameter `logging` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Object Lock Configuration:** S3 Bucket Object Lock can be configured in either the standalone resource [`aws_s3_bucket_object_lock_configuration`](s3_bucket_object_lock_configuration.html)
or with the deprecated parameter `object_lock_configuration` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Policy Configuration:** S3 Bucket Policy can be configured in either the standalone resource [`aws_s3_bucket_policy`](s3_bucket_policy.html)
or with the deprecated parameter `policy` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Replication Configuration:** S3 Bucket Replication can be configured in either the standalone resource [`aws_s3_bucket_replication_configuration`](s3_bucket_replication_configuration.html)
or with the deprecated parameter `replication_configuration` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Request Payment Configuration:** S3 Bucket Request Payment can be configured in either the standalone resource [`aws_s3_bucket_request_payment_configuration`](s3_bucket_request_payment_configuration.html)
or with the deprecated parameter `request_payer` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Server Side Encryption Configuration:** S3 Bucket Server Side Encryption can be configured in either the standalone resource [`aws_s3_bucket_server_side_encryption_configuration`](s3_bucket_server_side_encryption_configuration.html)
or with the deprecated parameter `server_side_encryption_configuration` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Versioning Configuration:** S3 Bucket versioning can be configured in either the standalone resource [`aws_s3_bucket_versioning`](s3_bucket_versioning.html.markdown)
or with the deprecated parameter `versioning` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

~> **NOTE on S3 Bucket Website Configuration:** S3 Bucket Website can be configured in either the standalone resource [`aws_s3_bucket_website_configuration`](s3_bucket_website_configuration.html.markdown)
or with the deprecated parameter `website` in the resource `aws_s3_bucket`.
Configuring with both will cause inconsistencies and may overwrite configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: b
  namespace: flux-system
spec:
  path: aws_s3_bucket
  values:
    bucket: my-tf-test-bucket
    tags:
      Environment: Dev
      Name: My bucket
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference) for the arguments accepted by the `aws_s3_bucket` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#attributes-reference) for the attributes exported by the `aws_s3_bucket` resource.
