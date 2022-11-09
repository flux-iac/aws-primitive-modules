
# Primitive Module: aws_appmesh_virtual_router

This is the Weave TF-controller primitive module for the resource `aws_appmesh_virtual_router`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_router). **The example below still needs to be tested and validated**.

## Description

Provides an AWS App Mesh virtual router resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: serviceb
  namespace: flux-system
spec:
  path: aws_appmesh_virtual_router
  values:
    mesh_name: << id of an aws_appmesh_mesh >>
    name: serviceB
    spec:
      listener:
        port_mapping:
          port: 8080
          protocol: http
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_router#argument-reference) for the arguments accepted by the `aws_appmesh_virtual_router` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_router#attributes-reference) for the attributes exported by the `aws_appmesh_virtual_router` resource.
