
# Primitive Module: aws_s3control_access_point_policy

This is the Weave TF-controller primitive module for the resource `aws_s3control_access_point_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_access_point_policy). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Access Point resource policy.

~> **NOTE on Access Points and Access Point Policies:** Terraform provides both a standalone Access Point Policy resource and an [Access Point](s3_access_point.html) resource with a resource policy defined in-line. You cannot use an Access Point with in-line resource policy in conjunction with an Access Point Policy resource. Doing so will cause a conflict of policies and will overwrite the access point's resource policy.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_access_point_policy
  values:
    access_point_arn: << arn of an aws_s3_access_point >>
    policy: |-
      ${jsonencode({
          Version = "2008-10-17"
          Statement = [{
            Effect = "Allow"
            Action = "s3:GetObjectTagging"
            Principal = {
              AWS = "*"
            }
            Resource = "<< arn of an aws_s3_access_point >>/object/*"
          }]
        })}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_access_point_policy#argument-reference) for the arguments accepted by the `aws_s3control_access_point_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_access_point_policy#attributes-reference) for the attributes exported by the `aws_s3control_access_point_policy` resource.
