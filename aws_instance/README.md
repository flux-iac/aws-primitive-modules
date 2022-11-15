
# Primitive Module: aws_instance

This is the Weave TF-controller primitive module for the resource `aws_instance`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance). **The example below still needs to be tested and validated**.

## Description

Provides an EC2 instance resource. This allows instances to be created, updated, and deleted. Instances also support [provisioning](https://www.terraform.io/docs/provisioners/index.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: web
  namespace: flux-system
spec:
  path: aws_instance
  values:
    ami: << ubuntu.id of a data >>
    instance_type: t3.micro
    tags:
      Name: HelloWorld
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#argument-reference) for the arguments accepted by the `aws_instance` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#attributes-reference) for the attributes exported by the `aws_instance` resource.
