
# Primitive Module: aws_elb_attachment

This is the Weave TF-controller primitive module for the resource `aws_elb_attachment`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb_attachment). **The example below still needs to be tested and validated**.

## Description

Attaches an EC2 instance to an Elastic Load Balancer (ELB). For attaching resources with Application Load Balancer (ALB) or Network Load Balancer (NLB), see the [`aws_lb_target_group_attachment` resource](/docs/providers/aws/r/lb_target_group_attachment.html).

~> **NOTE on ELB Instances and ELB Attachments:** Terraform currently provides
both a standalone ELB Attachment resource (describing an instance attached to
an ELB), and an [Elastic Load Balancer resource](elb.html) with
`instances` defined in-line. At this time you cannot use an ELB with in-line
instances in conjunction with an ELB Attachment resource. Doing so will cause a
conflict and will overwrite attachments.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: baz
  namespace: flux-system
spec:
  path: aws_elb_attachment
  values:
    elb: << id of an aws_elb >>
    instance: << id of an aws_instance >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb_attachment#argument-reference) for the arguments accepted by the `aws_elb_attachment` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb_attachment#attributes-reference) for the attributes exported by the `aws_elb_attachment` resource.
