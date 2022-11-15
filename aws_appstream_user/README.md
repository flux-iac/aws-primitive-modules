
# Primitive Module: aws_appstream_user

This is the Weave TF-controller primitive module for the resource `aws_appstream_user`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_user). **The example below still needs to be tested and validated**.

## Description

Provides an AppStream user.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appstream_user
  values:
    authentication_type: USERPOOL
    first_name: FIRST NAME
    last_name: LAST NAME
    user_name: EMAIL
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_user#argument-reference) for the arguments accepted by the `aws_appstream_user` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_user#attributes-reference) for the attributes exported by the `aws_appstream_user` resource.
