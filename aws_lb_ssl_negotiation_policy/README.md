
# Primitive Module: aws_lb_ssl_negotiation_policy

This is the Weave TF-controller primitive module for the resource `aws_lb_ssl_negotiation_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_ssl_negotiation_policy). **The example below still needs to be tested and validated**.

## Description

Provides a load balancer SSL negotiation policy, which allows an ELB to control the ciphers and protocols that are supported during SSL negotiations between a client and a load balancer.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foo
  namespace: flux-system
spec:
  path: aws_lb_ssl_negotiation_policy
  values:
    attribute:
    - name: Protocol-TLSv1
      value: "false"
    - name: Protocol-TLSv1.1
      value: "false"
    - name: Protocol-TLSv1.2
      value: "true"
    - name: Server-Defined-Cipher-Order
      value: "true"
    - name: ECDHE-RSA-AES128-GCM-SHA256
      value: "true"
    - name: AES128-GCM-SHA256
      value: "true"
    - name: EDH-RSA-DES-CBC3-SHA
      value: "false"
    lb_port: 443
    load_balancer: << id of an aws_elb >>
    name: foo-policy
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_ssl_negotiation_policy#argument-reference) for the arguments accepted by the `aws_lb_ssl_negotiation_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_ssl_negotiation_policy#attributes-reference) for the attributes exported by the `aws_lb_ssl_negotiation_policy` resource.
