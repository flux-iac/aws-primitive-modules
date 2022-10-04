
# Primitive Module: aws_eks_fargate_profile

This is the Weave TF-controller primitive module for resource `aws_eks_fargate_profile`.

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
      namespace: example
    subnet_ids: ${aws_subnet.example[*].id}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_eks_fargate_profile` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_eks_fargate_profile` resource.
