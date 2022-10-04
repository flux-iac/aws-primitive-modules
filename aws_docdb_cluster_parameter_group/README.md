
# Primitive Module: aws_docdb_cluster_parameter_group

This is the Weave TF-controller primitive module for resource `aws_docdb_cluster_parameter_group`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/aws_docdb_cluster_parameter_group). **The example below still needs to be tested and validated**.

## Description

Manages a DocumentDB Cluster Parameter Group

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_docdb_cluster_parameter_group
  values:
    description: docdb cluster parameter group
    family: docdb3.6
    name: example
    parameter:
      name: tls
      value: enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_docdb_cluster_parameter_group` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_docdb_cluster_parameter_group` resource.
