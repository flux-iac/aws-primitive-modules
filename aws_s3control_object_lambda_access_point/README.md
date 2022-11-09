
# Primitive Module: aws_s3control_object_lambda_access_point

This is the Weave TF-controller primitive module for the resource `aws_s3control_object_lambda_access_point`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_object_lambda_access_point). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Object Lambda Access Point.
An Object Lambda access point is associated with exactly one [standard access point](s3_access_point.html) and thus one Amazon S3 bucket.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3control_object_lambda_access_point
  values:
    configuration:
      supporting_access_point: << arn of an aws_s3_access_point >>
      transformation_configuration:
        content_transformation:
          aws_lambda:
            function_arn: << arn of an aws_lambda_function >>
    name: example
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_object_lambda_access_point#argument-reference) for the arguments accepted by the `aws_s3control_object_lambda_access_point` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3control_object_lambda_access_point#attributes-reference) for the attributes exported by the `aws_s3control_object_lambda_access_point` resource.
