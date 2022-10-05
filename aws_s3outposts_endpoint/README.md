
# Primitive Module: aws_s3outposts_endpoint

This is the Weave TF-controller primitive module for the resource `aws_s3outposts_endpoint`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3outposts_endpoint). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an S3 Outposts Endpoint.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3outposts_endpoint
  values:
    outpost_id: << example.id of a data >>
    security_group_id: << id of an aws_security_group >>
    subnet_id: << id of an aws_subnet >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3outposts_endpoint#argument-reference) for the arguments accepted by the `aws_s3outposts_endpoint` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3outposts_endpoint#attributes-reference) for the attributes exported by the `aws_s3outposts_endpoint` resource.
