
# Primitive Module: aws_ec2_transit_gateway_policy_table

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_policy_table`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_policy_table). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway Policy Table.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_policy_table
  values:
    tags:
      Name: Example Policy Table
    transit_gateway_id: << id of an aws_ec2_transit_gateway >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_policy_table#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_policy_table` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_policy_table#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_policy_table` resource.
