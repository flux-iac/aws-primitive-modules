
# Primitive Module: aws_lb_cookie_stickiness_policy

This is the Weave TF-controller primitive module for the resource `aws_lb_cookie_stickiness_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_cookie_stickiness_policy). **The example below still needs to be tested and validated**.

## Description

Provides a load balancer cookie stickiness policy, which allows an ELB to control the sticky session lifetime of the browser.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foo
  namespace: flux-system
spec:
  path: aws_lb_cookie_stickiness_policy
  values:
    cookie_expiration_period: 600
    lb_port: 80
    load_balancer: << id of an aws_elb >>
    name: foo-policy
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_cookie_stickiness_policy#argument-reference) for the arguments accepted by the `aws_lb_cookie_stickiness_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_cookie_stickiness_policy#attributes-reference) for the attributes exported by the `aws_lb_cookie_stickiness_policy` resource.
