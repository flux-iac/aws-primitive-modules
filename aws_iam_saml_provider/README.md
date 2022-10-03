
# Primitive Module: aws_iam_saml_provider

This is the Weave TF-controller primitive module for resource `aws_iam_saml_provider`.

## Description

Provides an IAM SAML provider.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: default
  namespace: flux-system
spec:
  path: aws_iam_saml_provider
  values:
    name: myprovider
    saml_metadata_document: ${file("saml-metadata.xml")}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
