
# Primitive Module: aws_ec2_transit_gateway

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway
  values:
    description: example
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway` resource.
