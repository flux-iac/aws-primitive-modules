
# Primitive Module: aws_iam_policy

This is the Weave TF-controller primitive module for resource `aws_iam_policy`.

## Description

Provides an IAM policy.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: policy
  namespace: flux-system
spec:
  path: aws_iam_policy
  values:
    description: My test policy
    name: test_policy
    path: /
    policy: '{"Statement":[{"Action":["ec2:Describe*"],"Effect":"Allow","Resource":"*"}],"Version":"2012-10-17"}'
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
