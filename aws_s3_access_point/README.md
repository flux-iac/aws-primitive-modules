
# Primitive Module: aws_s3_access_point

This is the Weave TF-controller primitive module for the resource `aws_s3_access_point`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_access_point). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Access Point.

~> **NOTE on Access Points and Access Point Policies:** Terraform provides both a standalone [Access Point Policy](s3control_access_point_policy.html) resource and an Access Point resource with a resource policy defined in-line. You cannot use an Access Point with in-line resource policy in conjunction with an Access Point Policy resource. Doing so will cause a conflict of policies and will overwrite the access point's resource policy.

-> Advanced usage: To use a custom API endpoint for this Terraform resource, use the [`s3control` endpoint provider configuration](/docs/providers/aws/index.html#s3control), not the `s3` endpoint provider configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_access_point
  values:
    bucket: << id of an aws_s3_bucket >>
    name: example
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_access_point#argument-reference) for the arguments accepted by the `aws_s3_access_point` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_access_point#attributes-reference) for the attributes exported by the `aws_s3_access_point` resource.
