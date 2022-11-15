
# Primitive Module: aws_s3_object_copy

This is the Weave TF-controller primitive module for the resource `aws_s3_object_copy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object_copy). **The example below still needs to be tested and validated**.

## Description

Provides a resource for copying an S3 object.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_s3_object_copy
  values:
    bucket: destination_bucket
    grant:
    - permissions:
      - READ
      type: Group
      uri: http://acs.amazonaws.com/groups/global/AllUsers
    key: destination_key
    source: source_bucket/source_key
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object_copy#argument-reference) for the arguments accepted by the `aws_s3_object_copy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object_copy#attributes-reference) for the attributes exported by the `aws_s3_object_copy` resource.
