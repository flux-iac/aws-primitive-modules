
# Primitive Module: aws_appmesh_mesh

This is the Weave TF-controller primitive module for the resource `aws_appmesh_mesh`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_mesh). **The example below still needs to be tested and validated**.

## Description

Provides an AWS App Mesh service mesh resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: simple
  namespace: flux-system
spec:
  path: aws_appmesh_mesh
  values:
    name: simpleapp
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_mesh#argument-reference) for the arguments accepted by the `aws_appmesh_mesh` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_mesh#attributes-reference) for the attributes exported by the `aws_appmesh_mesh` resource.
