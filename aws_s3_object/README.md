
# Primitive Module: aws_s3_object

This is the Weave TF-controller primitive module for the resource `aws_s3_object`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object). **The example below still needs to be tested and validated**.

## Description

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
  path: aws_s3_object
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

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object#argument-reference) for the arguments accepted by the `aws_s3_object` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object#attributes-reference) for the attributes exported by the `aws_s3_object` resource.
