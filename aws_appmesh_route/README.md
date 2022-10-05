
# Primitive Module: aws_appmesh_route

This is the Weave TF-controller primitive module for the resource `aws_appmesh_route`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_route). **The example below still needs to be tested and validated**.

## Description

Provides an AWS App Mesh route resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: serviceb
  namespace: flux-system
spec:
  path: aws_appmesh_route
  values:
    mesh_name: << id of an aws_appmesh_mesh >>
    name: serviceB-route
    spec:
      http_route:
        action:
          weighted_target:
          - virtual_node: << name of an aws_appmesh_virtual_node >>
            weight: 90
          - virtual_node: << name of an aws_appmesh_virtual_node >>
            weight: 10
        match:
          prefix: /
    virtual_router_name: << name of an aws_appmesh_virtual_router >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_route#argument-reference) for the arguments accepted by the `aws_appmesh_route` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_route#attributes-reference) for the attributes exported by the `aws_appmesh_route` resource.
