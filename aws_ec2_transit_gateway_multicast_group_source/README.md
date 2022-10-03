
# Primitive Module: aws_ec2_transit_gateway_multicast_group_source

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_multicast_group_source`.

## Description

Registers sources (network interfaces) with the transit gateway multicast group.
A multicast source is a network interface attached to a supported instance that sends multicast traffic.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_multicast_group_source
  values:
    group_ip_address: 224.0.0.1
    network_interface_id: << id of an aws_network_interface >>
    transit_gateway_multicast_domain_id: << id of an aws_ec2_transit_gateway_multicast_domain >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
