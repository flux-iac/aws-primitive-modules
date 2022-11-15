
# Primitive Module: aws_appmesh_gateway_route

This is the Weave TF-controller primitive module for the resource `aws_appmesh_gateway_route`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_gateway_route). **The example below still needs to be tested and validated**.

## Description

Provides an AWS App Mesh gateway route resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appmesh_gateway_route
  values:
    mesh_name: example-service-mesh
    name: example-gateway-route
    spec:
    - http_route:
      - action:
        - target:
          - virtual_service:
            - virtual_service_name: << name of an aws_appmesh_virtual_service >>
        match:
        - prefix: /
    tags:
      Environment: test
    virtual_gateway_name: << name of an aws_appmesh_virtual_gateway >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_gateway_route#argument-reference) for the arguments accepted by the `aws_appmesh_gateway_route` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appmesh_gateway_route#attributes-reference) for the attributes exported by the `aws_appmesh_gateway_route` resource.
