
# Primitive Module: aws_appmesh_virtual_node

This is the Weave TF-controller primitive module for the resource `aws_appmesh_virtual_node`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_node). **The example below still needs to be tested and validated**.

## Description

Provides an AWS App Mesh virtual node resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: serviceb-1
  namespace: flux-system
spec:
  path: aws_appmesh_virtual_node
  values:
    mesh_name: << id of an aws_appmesh_mesh >>
    name: serviceBv1
    spec:
    - backend:
      - virtual_service:
        - virtual_service_name: servicea.simpleapp.local
      listener:
      - port_mapping:
        - port: 8080
          protocol: http
      service_discovery:
      - dns:
        - hostname: serviceb.simpleapp.local
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_node#argument-reference) for the arguments accepted by the `aws_appmesh_virtual_node` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_node#attributes-reference) for the attributes exported by the `aws_appmesh_virtual_node` resource.
