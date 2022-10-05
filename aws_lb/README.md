
# Primitive Module: aws_lb

This is the Weave TF-controller primitive module for the resource `aws_lb`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb). **The example below still needs to be tested and validated**.

## Description

Provides a Load Balancer resource.

~> **Note:** `aws_alb` is known as `aws_lb`. The functionality is identical.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_lb
  values:
    access_logs:
      bucket: << bucket of an aws_s3_bucket >>
      enabled: true
      prefix: test-lb
    enable_deletion_protection: true
    internal: false
    load_balancer_type: application
    name: test-lb-tf
    subnets: '${[for subnet in aws_subnet.public : subnet.id]}'
    tags:
      Environment: production
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb#argument-reference) for the arguments accepted by the `aws_lb` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb#attributes-reference) for the attributes exported by the `aws_lb` resource.
