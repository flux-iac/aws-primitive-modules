
# Primitive Module: aws_lb_target_group_attachment

This is the Weave TF-controller primitive module for the resource `aws_lb_target_group_attachment`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment). **The example below still needs to be tested and validated**.

## Description

Provides the ability to register instances and containers with an Application Load Balancer (ALB) or Network Load Balancer (NLB) target group. For attaching resources with Elastic Load Balancer (ELB), see the [`aws_elb_attachment` resource](/docs/providers/aws/r/elb_attachment.html).

~> **Note:** `aws_alb_target_group_attachment` is known as `aws_lb_target_group_attachment`. The functionality is identical.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_lb_target_group_attachment
  values:
    port: 80
    target_group_arn: << arn of an aws_lb_target_group >>
    target_id: << id of an aws_instance >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment#argument-reference) for the arguments accepted by the `aws_lb_target_group_attachment` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment#attributes-reference) for the attributes exported by the `aws_lb_target_group_attachment` resource.
