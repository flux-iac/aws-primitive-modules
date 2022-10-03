
# Primitive Module: aws_ec2_transit_gateway_route_table_association

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_route_table_association`.

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
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
