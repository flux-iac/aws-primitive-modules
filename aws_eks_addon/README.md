
# Primitive Module: aws_eks_addon

This is the Weave TF-controller primitive module for resource `aws_eks_addon`.

## Description

Manages an EKS add-on.

~> **Note:** Amazon EKS add-on can only be used with Amazon EKS Clusters
running version 1.18 with platform version eks.3 or later
because add-ons rely on the Server-side Apply Kubernetes feature,
which is only available in Kubernetes 1.18 and later.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_eks_addon
  values:
    addon_name: vpc-cni
    cluster_name: << name of an aws_eks_cluster >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_eks_addon` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_eks_addon` resource.
