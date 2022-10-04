
# Primitive Module: aws_docdb_cluster_snapshot

This is the Weave TF-controller primitive module for resource `aws_docdb_cluster_snapshot`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_snapshot). **The example below still needs to be tested and validated**.

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
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_snapshot#argument-reference) for the arguments accepted by the `aws_docdb_cluster_snapshot` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_snapshot#attributes-reference) for the attributes exported by the `aws_docdb_cluster_snapshot` resource.
