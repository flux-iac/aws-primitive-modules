
# Primitive Module: aws_docdb_cluster_snapshot

This is the Weave TF-controller primitive module for resource `aws_docdb_cluster_snapshot`.

## Description

Manages a DocDB database cluster snapshot for DocDB clusters.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_docdb_cluster_snapshot
  values:
    db_cluster_identifier: << id of an aws_docdb_cluster >>
    db_cluster_snapshot_identifier: resourcetestsnapshot1234
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
