
# Primitive Module: aws_ec2_transit_gateway_prefix_list_reference

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_prefix_list_reference`.

## Description

Manages an EC2 Transit Gateway Prefix List Reference.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_prefix_list_reference
  values:
    blackhole: true
    prefix_list_id: << id of an aws_ec2_managed_prefix_list >>
    transit_gateway_route_table_id: << association_default_route_table_id of an aws_ec2_transit_gateway >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
