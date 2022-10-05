
# Primitive Module: aws_eks_node_group

This is the Weave TF-controller primitive module for the resource `aws_eks_node_group`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group). **The example below still needs to be tested and validated**.

## Description

Manages an EKS Node Group, which can provision and optionally update an Auto Scaling Group of Kubernetes worker nodes compatible with EKS. Additional documentation about this functionality can be found in the [EKS User Guide](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_eks_node_group
  values:
    cluster_name: << name of an aws_eks_cluster >>
    node_group_name: example
    node_role_arn: << arn of an aws_iam_role >>
    scaling_config:
      desired_size: 1
      max_size: 2
      min_size: 1
    subnet_ids: ${aws_subnet.example[*].id}
    update_config:
      max_unavailable: 1
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group#argument-reference) for the arguments accepted by the `aws_eks_node_group` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group#attributes-reference) for the attributes exported by the `aws_eks_node_group` resource.
