
# Primitive Module: aws_ec2_transit_gateway_route_table_association

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_route_table_association`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table_association). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway Route Table association.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_route_table_association
  values:
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_vpc_attachment >>
    transit_gateway_route_table_id: << id of an aws_ec2_transit_gateway_route_table >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table_association#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_route_table_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table_association#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_route_table_association` resource.
