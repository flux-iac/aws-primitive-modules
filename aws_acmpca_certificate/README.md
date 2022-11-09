
# Primitive Module: aws_acmpca_certificate

This is the Weave TF-controller primitive module for the resource `aws_acmpca_certificate`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate). **The example below still needs to be tested and validated**.

## Description

Provides a resource to issue a certificate using AWS Certificate Manager Private Certificate Authority (ACM PCA).

Certificates created using `aws_acmpca_certificate` are not eligible for automatic renewal,
and must be replaced instead.
To issue a renewable certificate using an ACM PCA, create a [`aws_acm_certificate`](acm_certificate.html)
with the parameter `certificate_authority_arn`.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_acmpca_certificate
  values:
    certificate_authority_arn: << arn of an aws_acmpca_certificate_authority >>
    certificate_signing_request: << cert_request_pem of a tls_cert_request >>
    signing_algorithm: SHA256WITHRSA
    validity:
      type: YEARS
      value: 1
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate#argument-reference) for the arguments accepted by the `aws_acmpca_certificate` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate#attributes-reference) for the attributes exported by the `aws_acmpca_certificate` resource.
