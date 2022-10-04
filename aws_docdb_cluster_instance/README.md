
# Primitive Module: aws_docdb_cluster_instance

This is the Weave TF-controller primitive module for resource `aws_docdb_cluster_instance`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance). **The example below still needs to be tested and validated**.

## Description

Provides an DocDB Cluster Resource Instance. A Cluster Instance Resource defines
attributes that are specific to a single instance in a [DocDB Cluster][1].

You do not designate a primary and subsequent replicas. Instead, you simply add DocDB
Instances and DocDB manages the replication. You can use the [count][3]
meta-parameter to make multiple instances and join them all to the same DocDB
Cluster, or you may specify different Cluster Instance resources with various
`instance_class` sizes.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: cluster-instances
  namespace: flux-system
spec:
  path: aws_docdb_cluster_instance
  values:
    cluster_identifier: << id of an aws_docdb_cluster >>
    count: 2
    identifier: docdb-cluster-demo-${count.index}
    instance_class: db.r5.large
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance#argument-reference) for the arguments accepted by the `aws_docdb_cluster_instance` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance#attributes-reference) for the attributes exported by the `aws_docdb_cluster_instance` resource.
