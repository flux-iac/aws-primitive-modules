
# Primitive Module: aws_ami

This is the Weave TF-controller primitive module for resource `aws_ami`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami). **The example below still needs to be tested and validated**.

## Description

The AMI resource allows the creation and management of a completely-custom
*Amazon Machine Image* (AMI).

If you just want to duplicate an existing AMI, possibly copying it to another
region, it's better to use `aws_ami_copy` instead.

If you just want to share an existing AMI with another AWS account,
it's better to use `aws_ami_launch_permission` instead.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ami
  values:
    ebs_block_device:
      device_name: /dev/xvda
      snapshot_id: snap-xxxxxxxx
      volume_size: 8
    name: terraform-example
    root_device_name: /dev/xvda
    virtualization_type: hvm
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami#argument-reference) for the arguments accepted by the `aws_ami` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami#attributes-reference) for the attributes exported by the `aws_ami` resource.
