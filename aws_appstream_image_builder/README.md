
# Primitive Module: aws_appstream_image_builder

This is the Weave TF-controller primitive module for the resource `aws_appstream_image_builder`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_image_builder). **The example below still needs to be tested and validated**.

## Description

Provides an AppStream image builder.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-fleet
  namespace: flux-system
spec:
  path: aws_appstream_image_builder
  values:
    description: Description of a ImageBuilder
    display_name: Display name of a ImageBuilder
    enable_default_internet_access: false
    image_name: AppStream-WinServer2012R2-07-19-2021
    instance_type: stream.standard.large
    name: Name
    tags:
      Name: Example Image Builder
    vpc_config: {}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_image_builder#argument-reference) for the arguments accepted by the `aws_appstream_image_builder` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_image_builder#attributes-reference) for the attributes exported by the `aws_appstream_image_builder` resource.
