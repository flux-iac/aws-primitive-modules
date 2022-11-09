
# Primitive Module: aws_s3control_multi_region_access_point_policy

This is the Weave TF-controller primitive module for the resource `aws_s3control_multi_region_access_point_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_multi_region_access_point_policy). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Multi-Region Access Point access control policy.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_multi_region_access_point_policy
  values:
    details:
      name: ${element(split(":", aws_s3control_multi_region_access_point.example.id),
        1)}
      policy: |-
        ${jsonencode({
              "Version" : "2012-10-17",
              "Statement" : [
                {
                  "Sid" : "Example",
                  "Effect" : "Allow",
                  "Principal" : {
                    "AWS" : data.aws_caller_identity.current.account_id
                  },
                  "Action" : ["s3:GetObject", "s3:PutObject"],
                  "Resource" : "arn:<< current.partition of a data >>:s3::<< current.account_id of a data >>:accesspoint/<< alias of an aws_s3control_multi_region_access_point >>/object/*"
                }
              ]
            })}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_multi_region_access_point_policy#argument-reference) for the arguments accepted by the `aws_s3control_multi_region_access_point_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_multi_region_access_point_policy#attributes-reference) for the attributes exported by the `aws_s3control_multi_region_access_point_policy` resource.
