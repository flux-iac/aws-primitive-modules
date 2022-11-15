
# Primitive Module: aws_appstream_fleet

This is the Weave TF-controller primitive module for the resource `aws_appstream_fleet`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_fleet). **The example below still needs to be tested and validated**.

## Description

Provides an AppStream fleet.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-fleet
  namespace: flux-system
spec:
  path: aws_appstream_fleet
  values:
    compute_capacity:
    - desired_instances: 1
    description: test fleet
    display_name: test-fleet
    enable_default_internet_access: false
    fleet_type: ON_DEMAND
    idle_disconnect_timeout_in_seconds: 60
    image_name: Amazon-AppStream2-Sample-Image-02-04-2019
    instance_type: stream.standard.large
    max_user_duration_in_seconds: 600
    name: test-fleet
    tags:
      TagName: tag-value
    vpc_config:
    - subnet_ids:
      - subnet-06e9b13400c225127
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_fleet#argument-reference) for the arguments accepted by the `aws_appstream_fleet` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_fleet#attributes-reference) for the attributes exported by the `aws_appstream_fleet` resource.
