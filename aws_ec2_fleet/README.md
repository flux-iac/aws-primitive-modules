
# Primitive Module: aws_ec2_fleet

This is the Weave TF-controller primitive module for resource `aws_ec2_fleet`.

## Description

Provides a resource to manage EC2 Fleets.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_fleet
  values:
    launch_template_config:
    - override:
      - instance_type: m4.xlarge
        weighted_capacity: 1
      - instance_type: m4.2xlarge
        weighted_capacity: 2
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by `aws_ec2_fleet` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_fleet` resource.
