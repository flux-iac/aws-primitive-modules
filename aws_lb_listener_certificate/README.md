
# Primitive Module: aws_lb_listener_certificate

This is the Weave TF-controller primitive module for the resource `aws_lb_listener_certificate`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_certificate). **The example below still needs to be tested and validated**.

## Description

Provides a Load Balancer Listener Certificate resource.

This resource is for additional certificates and does not replace the default certificate on the listener.

~> **Note:** `aws_alb_listener_certificate` is known as `aws_lb_listener_certificate`. The functionality is identical.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_lb_listener_certificate
  values:
    certificate_arn: << arn of an aws_acm_certificate >>
    listener_arn: << arn of an aws_lb_listener >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_certificate#argument-reference) for the arguments accepted by the `aws_lb_listener_certificate` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_certificate#attributes-reference) for the attributes exported by the `aws_lb_listener_certificate` resource.
