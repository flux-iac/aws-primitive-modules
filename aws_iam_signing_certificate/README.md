
# Primitive Module: aws_iam_signing_certificate

This is the Weave TF-controller primitive module for the resource `aws_iam_signing_certificate`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_signing_certificate). **The example below still needs to be tested and validated**.

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
  name: test-cert
  namespace: flux-system
spec:
  path: aws_iam_signing_certificate
  values:
    certificate_body: ${file("self-ca-cert.pem")}
    username: some_test_cert
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_signing_certificate#argument-reference) for the arguments accepted by the `aws_iam_signing_certificate` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_signing_certificate#attributes-reference) for the attributes exported by the `aws_iam_signing_certificate` resource.
