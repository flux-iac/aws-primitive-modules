
# Primitive Module: aws_iam_service_specific_credential

This is the Weave TF-controller primitive module for resource `aws_iam_service_specific_credential`.

## Description

Provides an IAM Service Specific Credential.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_iam_service_specific_credential
  values:
    service_name: codecommit.amazonaws.com
    user_name: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
