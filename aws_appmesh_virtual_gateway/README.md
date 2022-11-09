
# Primitive Module: aws_appmesh_virtual_gateway

This is the Weave TF-controller primitive module for the resource `aws_appmesh_virtual_gateway`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_gateway). **The example below still needs to be tested and validated**.

## Description

Provides an AWS App Mesh virtual gateway resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appmesh_virtual_gateway
  values:
    mesh_name: example-service-mesh
    name: example-virtual-gateway
    spec:
      listener:
        port_mapping:
          port: 8080
          protocol: http
    tags:
      Environment: test
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_gateway#argument-reference) for the arguments accepted by the `aws_appmesh_virtual_gateway` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_virtual_gateway#attributes-reference) for the attributes exported by the `aws_appmesh_virtual_gateway` resource.
