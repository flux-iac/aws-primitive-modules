
# Primitive Module: aws_ec2_transit_gateway_multicast_group_member

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_multicast_group_member`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_group_member). **The example below still needs to be tested and validated**.

## Description

Registers members (network interfaces) with the transit gateway multicast group.
A member is a network interface associated with a supported EC2 instance that receives multicast traffic.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_multicast_group_member
  values:
    group_ip_address: 224.0.0.1
    network_interface_id: << id of an aws_network_interface >>
    transit_gateway_multicast_domain_id: << id of an aws_ec2_transit_gateway_multicast_domain >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_group_member#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_multicast_group_member` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_group_member#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_multicast_group_member` resource.
