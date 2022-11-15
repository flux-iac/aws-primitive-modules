
# Primitive Module: aws_acmpca_certificate_authority

This is the Weave TF-controller primitive module for the resource `aws_acmpca_certificate_authority`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate_authority). **The example below still needs to be tested and validated**.

## Description

Provides a resource to manage AWS Certificate Manager Private Certificate Authorities (ACM PCA Certificate Authorities).

~> **NOTE:** Creating this resource will leave the certificate authority in a `PENDING_CERTIFICATE` status, which means it cannot yet issue certificates. To complete this setup, you must fully sign the certificate authority CSR available in the `certificate_signing_request` attribute and import the signed certificate outside of Terraform. Terraform can support another resource to manage that workflow automatically in the future.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_acmpca_certificate_authority
  values:
    certificate_authority_configuration:
    - key_algorithm: RSA_4096
      signing_algorithm: SHA512WITHRSA
      subject:
      - common_name: example.com
    permanent_deletion_time_in_days: 7
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate_authority#argument-reference) for the arguments accepted by the `aws_acmpca_certificate_authority` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate_authority#attributes-reference) for the attributes exported by the `aws_acmpca_certificate_authority` resource.
