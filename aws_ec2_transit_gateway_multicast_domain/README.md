
# Primitive Module: aws_ec2_transit_gateway_multicast_domain

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_multicast_domain`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_domain). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway Multicast Domain.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: domain
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_multicast_domain
  values:
    static_sources_support: enable
    tags:
      Name: Transit_Gateway_Multicast_Domain_Example
    transit_gateway_id: << id of an aws_ec2_transit_gateway >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_domain#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_multicast_domain` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_domain#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_multicast_domain` resource.
