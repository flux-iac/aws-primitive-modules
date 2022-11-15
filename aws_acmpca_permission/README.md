
# Primitive Module: aws_acmpca_permission

This is the Weave TF-controller primitive module for the resource `aws_acmpca_permission`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_permission). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage an AWS Certificate Manager Private Certificate Authorities Permission.
Currently, this is only required in order to allow the ACM service to automatically renew certificates issued by a PCA.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_acmpca_permission
  values:
    actions:
    - IssueCertificate
    - GetCertificate
    - ListPermissions
    certificate_authority_arn: << arn of an aws_acmpca_certificate_authority >>
    principal: acm.amazonaws.com
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_permission#argument-reference) for the arguments accepted by the `aws_acmpca_permission` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_permission#attributes-reference) for the attributes exported by the `aws_acmpca_permission` resource.
