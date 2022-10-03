
# Primitive Module: aws_iam_user_group_membership

This is the Weave TF-controller primitive module for resource `aws_iam_user_group_membership`.

## Description

Provides a resource for adding an [IAM User][2] to [IAM Groups][1]. This
resource can be used multiple times with the same user for non-overlapping
groups.

To exclusively manage the users in a group, see the
[`aws_iam_group_membership` resource][3].

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-1
  namespace: flux-system
spec:
  path: aws_iam_user_group_membership
  values:
    groups:
    - << name of an aws_iam_group >>
    - << name of an aws_iam_group >>
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example-2
  namespace: flux-system
spec:
  path: aws_iam_user_group_membership
  values:
    groups:
    - << name of an aws_iam_group >>
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
