
# Primitive Module: aws_lb_listener

This is the Weave TF-controller primitive module for the resource `aws_lb_listener`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener). **The example below still needs to be tested and validated**.

## Description

Provides a Load Balancer Listener resource.

~> **Note:** `aws_alb_listener` is known as `aws_lb_listener`. The functionality is identical.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: front-end
  namespace: flux-system
spec:
  path: aws_lb_listener
  values:
    certificate_arn: arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4
    default_action:
      target_group_arn: << arn of an aws_lb_target_group >>
      type: forward
    load_balancer_arn: << arn of an aws_lb >>
    port: "443"
    protocol: HTTPS
    ssl_policy: ELBSecurityPolicy-2016-08
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener#argument-reference) for the arguments accepted by the `aws_lb_listener` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener#attributes-reference) for the attributes exported by the `aws_lb_listener` resource.
