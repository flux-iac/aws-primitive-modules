
# Primitive Module: aws_acmpca_certificate_authority_certificate

This is the Weave TF-controller primitive module for the resource `aws_acmpca_certificate_authority_certificate`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate_authority_certificate). **The example below still needs to be tested and validated**.

## Description

Associates a certificate with an AWS Certificate Manager Private Certificate Authority (ACM PCA Certificate Authority). An ACM PCA Certificate Authority is unable to issue certificates until it has a certificate associated with it. A root level ACM PCA Certificate Authority is able to self-sign its own root certificate.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_acmpca_certificate_authority_certificate
  values:
    certificate: << certificate of an aws_acmpca_certificate >>
    certificate_authority_arn: << arn of an aws_acmpca_certificate_authority >>
    certificate_chain: << certificate_chain of an aws_acmpca_certificate >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate_authority_certificate#argument-reference) for the arguments accepted by the `aws_acmpca_certificate_authority_certificate` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate_authority_certificate#attributes-reference) for the attributes exported by the `aws_acmpca_certificate_authority_certificate` resource.
