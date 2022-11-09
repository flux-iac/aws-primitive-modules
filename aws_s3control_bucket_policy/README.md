
# Primitive Module: aws_s3control_bucket_policy

This is the Weave TF-controller primitive module for the resource `aws_s3control_bucket_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket_policy). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Control Bucket Policy.

-> This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Bucket Policies in an AWS Partition, see the [`aws_s3_bucket_policy` resource](/docs/providers/aws/r/s3_bucket_policy.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_bucket_policy
  values:
    bucket: << arn of an aws_s3control_bucket >>
    policy: |-
      ${jsonencode({
          Id = "testBucketPolicy"
          Statement = [
            {
              Action = "s3-outposts:PutBucketLifecycleConfiguration"
              Effect = "Deny"
              Principal = {
                AWS = "*"
              }
              Resource = aws_s3control_bucket.example.arn
              Sid      = "statement1"
            }
          ]
          Version = "2012-10-17"
        })}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket_policy#argument-reference) for the arguments accepted by the `aws_s3control_bucket_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_bucket_policy#attributes-reference) for the attributes exported by the `aws_s3control_bucket_policy` resource.
