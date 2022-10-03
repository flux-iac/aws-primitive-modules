
# Primitive Module: aws_iam_service_linked_role

This is the Weave TF-controller primitive module for resource `aws_iam_service_linked_role`.

## Description

Provides an [IAM service-linked role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: elasticbeanstalk
  namespace: flux-system
spec:
  path: aws_iam_service_linked_role
  values:
    aws_service_name: elasticbeanstalk.amazonaws.com
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
