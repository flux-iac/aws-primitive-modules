
# Primitive Module: aws_eks_fargate_profile

This is the Weave TF-controller primitive module for the resource `aws_eks_fargate_profile`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_fargate_profile). **The example below still needs to be tested and validated**.

## Description

Manages an EKS Fargate Profile.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_eks_fargate_profile
  values:
    cluster_name: << name of an aws_eks_cluster >>
    fargate_profile_name: example
    pod_execution_role_arn: << arn of an aws_iam_role >>
    selector:
    - namespace: example
    subnet_ids: ${aws_subnet.example[*].id}
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_fargate_profile#argument-reference) for the arguments accepted by the `aws_eks_fargate_profile` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_fargate_profile#attributes-reference) for the attributes exported by the `aws_eks_fargate_profile` resource.
