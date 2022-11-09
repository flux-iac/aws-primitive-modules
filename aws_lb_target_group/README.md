
# Primitive Module: aws_lb_target_group

This is the Weave TF-controller primitive module for the resource `aws_lb_target_group`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group). **The example below still needs to be tested and validated**.

## Description

Provides a Target Group resource for use with Load Balancer resources.

~> **Note:** `aws_alb_target_group` is known as `aws_lb_target_group`. The functionality is identical.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_lb_target_group
  values:
    name: tf-example-lb-tg
    port: 80
    protocol: HTTP
    vpc_id: << id of an aws_vpc >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group#argument-reference) for the arguments accepted by the `aws_lb_target_group` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group#attributes-reference) for the attributes exported by the `aws_lb_target_group` resource.
