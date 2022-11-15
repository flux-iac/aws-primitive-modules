
# Primitive Module: aws_iam_service_linked_role

This is the Weave TF-controller primitive module for the resource `aws_iam_service_linked_role`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_linked_role). **The example below still needs to be tested and validated**.

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
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_linked_role#argument-reference) for the arguments accepted by the `aws_iam_service_linked_role` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_linked_role#attributes-reference) for the attributes exported by the `aws_iam_service_linked_role` resource.
