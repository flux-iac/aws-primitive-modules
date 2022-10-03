
# Primitive Module: aws_iam_signing_certificate

This is the Weave TF-controller primitive module for resource `aws_iam_signing_certificate`.

## Description

Provides an IAM Signing Certificate resource to upload Signing Certificates.

~> **Note:** All arguments including the certificate body will be stored in the raw state as plain-text.
[Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-cert-alt
  namespace: flux-system
spec:
  path: aws_iam_signing_certificate
  values:
    certificate_body: |
      -----BEGIN CERTIFICATE-----
      [......] # cert contents
      -----END CERTIFICATE-----
    username: some_test_cert
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
