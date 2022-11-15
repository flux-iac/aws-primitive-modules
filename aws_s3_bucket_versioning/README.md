
# Primitive Module: aws_s3_bucket_versioning

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_versioning`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning). **The example below still needs to be tested and validated**.

## Description

Provides a resource for controlling versioning on an S3 bucket.
Deleting this resource will either suspend versioning on the associated S3 bucket or
simply remove the resource from Terraform state if the associated S3 bucket is unversioned.

For more information, see [How S3 versioning works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/manage-versioning-examples.html).

~> **NOTE:** If you are enabling versioning on the bucket for the first time, AWS recommends that you wait for 15 minutes after enabling versioning before issuing write operations (PUT or DELETE) on objects in the bucket.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: versioning-example
  namespace: flux-system
spec:
  path: aws_s3_bucket_versioning
  values:
    bucket: << id of an aws_s3_bucket >>
    versioning_configuration:
    - status: Enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference) for the arguments accepted by the `aws_s3_bucket_versioning` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#attributes-reference) for the attributes exported by the `aws_s3_bucket_versioning` resource.
