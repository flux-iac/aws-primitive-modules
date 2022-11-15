
# Primitive Module: aws_appmesh_virtual_service

This is the Weave TF-controller primitive module for the resource `aws_appmesh_virtual_service`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_service). **The example below still needs to be tested and validated**.

## Description

Provides an AWS App Mesh virtual service resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: servicea
  namespace: flux-system
spec:
  path: aws_appmesh_virtual_service
  values:
    mesh_name: << id of an aws_appmesh_mesh >>
    name: servicea.simpleapp.local
    spec:
    - provider:
      - virtual_node:
        - virtual_node_name: << name of an aws_appmesh_virtual_node >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_service#argument-reference) for the arguments accepted by the `aws_appmesh_virtual_service` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_service#attributes-reference) for the attributes exported by the `aws_appmesh_virtual_service` resource.
