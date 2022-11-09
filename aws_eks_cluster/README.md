
# Primitive Module: aws_eks_cluster

This is the Weave TF-controller primitive module for the resource `aws_eks_cluster`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster). **The example below still needs to be tested and validated**.

## Description

Manages an EKS Cluster.

> **Hands-on:** For an example of `aws_eks_cluster` in use, follow the [Provision an EKS Cluster](https://learn.hashicorp.com/tutorials/terraform/eks) tutorial on HashiCorp Learn.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_eks_cluster
  values:
    name: example
    role_arn: << arn of an aws_iam_role >>
    vpc_config:
      subnet_ids:
      - << id of an aws_subnet >>
      - << id of an aws_subnet >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster#argument-reference) for the arguments accepted by the `aws_eks_cluster` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster#attributes-reference) for the attributes exported by the `aws_eks_cluster` resource.
