
# Primitive Module: aws_docdb_subnet_group

This is the Weave TF-controller primitive module for resource `aws_docdb_subnet_group`.

## Description

Provides an DocumentDB subnet group resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: default
  namespace: flux-system
spec:
  path: aws_docdb_subnet_group
  values:
    name: main
    subnet_ids:
    - << id of an aws_subnet >>
    - << id of an aws_subnet >>
    tags:
      Name: My docdb subnet group
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
