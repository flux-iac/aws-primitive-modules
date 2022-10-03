
# Primitive Module: aws_ec2_host

This is the Weave TF-controller primitive module for resource `aws_ec2_host`.

## Description

Provides an EC2 Host resource. This allows Dedicated Hosts to be allocated, modified, and released.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_ec2_host
  values:
    auto_placement: "on"
    availability_zone: us-west-2a
    host_recovery: "on"
    instance_type: c5.18xlarge
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
