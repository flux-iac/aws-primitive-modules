
# Primitive Module: aws_s3_bucket_object

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_object`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object). **The example below still needs to be tested and validated**.

## Description

~> **NOTE:** The `aws_s3_bucket_object` resource is DEPRECATED and will be removed in a future version! Use `aws_s3_object` instead, where new features and fixes will be added. When replacing `aws_s3_bucket_object` with `aws_s3_object` in your configuration, on the next apply, Terraform will recreate the object. If you prefer to not have Terraform recreate the object, import the object using `aws_s3_object`.

Provides an S3 object resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: object
  namespace: flux-system
spec:
  path: aws_s3_bucket_object
  values:
    bucket: your_bucket_name
    etag: ${filemd5("path/to/file")}
    key: new_object_key
    source: path/to/file
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object#argument-reference) for the arguments accepted by the `aws_s3_bucket_object` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object#attributes-reference) for the attributes exported by the `aws_s3_bucket_object` resource.
