
# Primitive Module: aws_ec2_transit_gateway_vpc_attachment

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_vpc_attachment`.

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
    subnet_ids:
    - << id of an aws_subnet >>
    transit_gateway_id: << id of an aws_ec2_transit_gateway >>
    vpc_id: << id of an aws_vpc >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
