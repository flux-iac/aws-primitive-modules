
# Primitive Module: aws_proxy_protocol_policy

This is the Weave TF-controller primitive module for the resource `aws_proxy_protocol_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/proxy_protocol_policy). **The example below still needs to be tested and validated**.

## Description

Provides a proxy protocol policy, which allows an ELB to carry a client connection information to a backend.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: smtp
  namespace: flux-system
spec:
  path: aws_proxy_protocol_policy
  values:
    instance_ports:
    - "25"
    - "587"
    load_balancer: << name of an aws_elb >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/proxy_protocol_policy#argument-reference) for the arguments accepted by the `aws_proxy_protocol_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/proxy_protocol_policy#attributes-reference) for the attributes exported by the `aws_proxy_protocol_policy` resource.
