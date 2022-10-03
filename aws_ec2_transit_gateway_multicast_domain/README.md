
# Primitive Module: aws_ec2_transit_gateway_multicast_domain

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_multicast_domain`.

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
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
