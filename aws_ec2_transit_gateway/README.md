
# Primitive Module: aws_ec2_transit_gateway

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway`.

## Description

Manages an EC2 Transit Gateway.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway
  values:
    description: example
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
