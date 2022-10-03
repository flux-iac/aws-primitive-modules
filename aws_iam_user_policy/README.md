
# Primitive Module: aws_iam_user_policy

This is the Weave TF-controller primitive module for resource `aws_iam_user_policy`.

## Description

Provides an IAM policy attached to a user.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: lb-ro
  namespace: flux-system
spec:
  path: aws_iam_user_policy
  values:
    name: test
    policy: '{"Statement":[{"Action":["ec2:Describe*"],"Effect":"Allow","Resource":"*"}],"Version":"2012-10-17"}'
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
