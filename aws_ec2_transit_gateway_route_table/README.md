
# Primitive Module: aws_ec2_transit_gateway_route_table

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_route_table`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway Route Table.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_route_table
  values:
    transit_gateway_id: << id of an aws_ec2_transit_gateway >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_route_table` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_route_table` resource.
