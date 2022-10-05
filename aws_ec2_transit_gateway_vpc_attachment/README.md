
# Primitive Module: aws_ec2_transit_gateway_vpc_attachment

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_vpc_attachment`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway VPC Attachment. For examples of custom route table association and propagation, see the EC2 Transit Gateway Networking Examples Guide.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_vpc_attachment
  values:
    transit_gateway_id: << id of an aws_ec2_transit_gateway >>
    vpc_id: << id of an aws_vpc >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_vpc_attachment` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_vpc_attachment` resource.
