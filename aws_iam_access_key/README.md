
# Primitive Module: aws_iam_access_key

This is the Weave TF-controller primitive module for resource `aws_iam_access_key`.

## Description

Provides an IAM access key. This is a set of credentials that allow API requests to be made as an IAM user.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: lb
  namespace: flux-system
spec:
  path: aws_iam_access_key
  values:
    pgp_key: keybase:some_person_that_exists
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_iam_access_key` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_iam_access_key` resource.
