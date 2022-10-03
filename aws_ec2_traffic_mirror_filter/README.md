
# Primitive Module: aws_ec2_traffic_mirror_filter

This is the Weave TF-controller primitive module for resource `aws_ec2_traffic_mirror_filter`.

## Description

Provides an Traffic mirror filter.  
Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foo
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_filter
  values:
    description: traffic mirror filter - terraform example
    network_services:
    - amazon-dns
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
