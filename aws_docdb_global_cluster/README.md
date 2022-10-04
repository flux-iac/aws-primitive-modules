
# Primitive Module: aws_docdb_global_cluster

This is the Weave TF-controller primitive module for resource `aws_docdb_global_cluster`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_global_cluster). **The example below still needs to be tested and validated**.

## Description

Manages an DocumentDB Global Cluster. A global cluster consists of one primary region and up to five read-only secondary regions. You issue write operations directly to the primary cluster in the primary region and Amazon DocumentDB automatically replicates the data to the secondary regions using dedicated infrastructure.

More information about DocumentDB Global Clusters can be found in the [DocumentDB Developer Guide](https://docs.aws.amazon.com/documentdb/latest/developerguide/global-clusters.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_docdb_global_cluster
  values:
    engine: docdb
    engine_version: 4.0.0
    global_cluster_identifier: global-test
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/docdb_global_cluster#argument-reference) for the arguments accepted by the `aws_docdb_global_cluster` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/docdb_global_cluster#attributes-reference) for the attributes exported by the `aws_docdb_global_cluster` resource.
