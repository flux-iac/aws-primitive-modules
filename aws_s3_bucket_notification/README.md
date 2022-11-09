
# Primitive Module: aws_s3_bucket_notification

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_notification`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification). **The example below still needs to be tested and validated**.

## Description

Manages a S3 Bucket Notification Configuration. For additional information, see the [Configuring S3 Event Notifications section in the Amazon S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

~> **NOTE:** S3 Buckets only support a single notification configuration. Declaring multiple `aws_s3_bucket_notification` resources to the same S3 Bucket will cause a perpetual difference in configuration. See the example "Trigger multiple Lambda functions" for an option.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: bucket-notification
  namespace: flux-system
spec:
  path: aws_s3_bucket_notification
  values:
    bucket: << id of an aws_s3_bucket >>
    topic:
      filter_suffix: .log
      topic_arn: << arn of an aws_sns_topic >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#argument-reference) for the arguments accepted by the `aws_s3_bucket_notification` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#attributes-reference) for the attributes exported by the `aws_s3_bucket_notification` resource.
