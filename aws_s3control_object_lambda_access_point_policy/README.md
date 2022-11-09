
# Primitive Module: aws_s3control_object_lambda_access_point_policy

This is the Weave TF-controller primitive module for the resource `aws_s3control_object_lambda_access_point_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_object_lambda_access_point_policy). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Object Lambda Access Point resource policy.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_object_lambda_access_point_policy
  values:
    name: << name of an aws_s3control_object_lambda_access_point >>
    policy: |-
      ${jsonencode({
          Version = "2008-10-17"
          Statement = [{
            Effect = "Allow"
            Action = "s3-object-lambda:GetObject"
            Principal = {
              AWS = data.aws_caller_identity.current.account_id
            }
            Resource = aws_s3control_object_lambda_access_point.example.arn
          }]
        })}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_object_lambda_access_point_policy#argument-reference) for the arguments accepted by the `aws_s3control_object_lambda_access_point_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_object_lambda_access_point_policy#attributes-reference) for the attributes exported by the `aws_s3control_object_lambda_access_point_policy` resource.
