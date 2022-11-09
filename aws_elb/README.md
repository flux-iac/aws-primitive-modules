
# Primitive Module: aws_elb

This is the Weave TF-controller primitive module for the resource `aws_elb`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb). **The example below still needs to be tested and validated**.

## Description

Provides an Elastic Load Balancer resource, also known as a "Classic
Load Balancer" after the release of
[Application/Network Load Balancers](/docs/providers/aws/r/lb.html).

~> **NOTE on ELB Instances and ELB Attachments:** Terraform currently
provides both a standalone [ELB Attachment resource](elb_attachment.html)
(describing an instance attached to an ELB), and an ELB resource with
`instances` defined in-line. At this time you cannot use an ELB with in-line
instances in conjunction with a ELB Attachment resources. Doing so will cause a
conflict and will overwrite attachments.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: bar
  namespace: flux-system
spec:
  path: aws_elb
  values:
    access_logs:
      bucket: foo
      bucket_prefix: bar
      interval: 60
    availability_zones:
    - us-west-2a
    - us-west-2b
    - us-west-2c
    connection_draining: true
    connection_draining_timeout: 400
    cross_zone_load_balancing: true
    health_check:
      healthy_threshold: 2
      interval: 30
      target: HTTP:8000/
      timeout: 3
      unhealthy_threshold: 2
    idle_timeout: 400
    listener:
    - instance_port: 8000
      instance_protocol: http
      lb_port: 80
      lb_protocol: http
    - instance_port: 8000
      instance_protocol: http
      lb_port: 443
      lb_protocol: https
      ssl_certificate_id: arn:aws:iam::123456789012:server-certificate/certName
    name: foobar-terraform-elb
    tags:
      Name: foobar-terraform-elb
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb#argument-reference) for the arguments accepted by the `aws_elb` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb#attributes-reference) for the attributes exported by the `aws_elb` resource.
