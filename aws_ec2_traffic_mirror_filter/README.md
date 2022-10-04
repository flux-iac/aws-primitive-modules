
# Primitive Module: aws_ec2_traffic_mirror_filter

This is the Weave TF-controller primitive module for resource `aws_ec2_traffic_mirror_filter`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_filter). **The example below still needs to be tested and validated**.

## Description

Provides an Traffic mirror filter.  
Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foo
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_filter
  values:
    description: traffic mirror filter - terraform example
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_filter#argument-reference) for the arguments accepted by the `aws_ec2_traffic_mirror_filter` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_filter#attributes-reference) for the attributes exported by the `aws_ec2_traffic_mirror_filter` resource.
