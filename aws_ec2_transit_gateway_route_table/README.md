
# Primitive Module: aws_ec2_transit_gateway_route_table

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_route_table`.

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
  approvalPlan: auto
  interval: 1h0m
```
