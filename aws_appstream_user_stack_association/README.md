
# Primitive Module: aws_appstream_user_stack_association

This is the Weave TF-controller primitive module for the resource `aws_appstream_user_stack_association`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_user_stack_association). **The example below still needs to be tested and validated**.

## Description

Manages an AppStream User Stack association.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_appstream_user_stack_association
  values:
    authentication_type: << authentication_type of an aws_appstream_user >>
    stack_name: << name of an aws_appstream_stack >>
    user_name: << user_name of an aws_appstream_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_user_stack_association#argument-reference) for the arguments accepted by the `aws_appstream_user_stack_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_user_stack_association#attributes-reference) for the attributes exported by the `aws_appstream_user_stack_association` resource.
