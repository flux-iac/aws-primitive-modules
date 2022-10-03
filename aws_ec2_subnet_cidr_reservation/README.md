
# Primitive Module: aws_ec2_subnet_cidr_reservation

This is the Weave TF-controller primitive module for resource `aws_ec2_subnet_cidr_reservation`.

## Description

Provides a subnet CIDR reservation resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_subnet_cidr_reservation
  values:
    cidr_block: 10.0.0.16/28
    reservation_type: prefix
    subnet_id: << id of an aws_subnet >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
