
# Primitive Module: aws_ecs_cluster

This is the Weave TF-controller primitive module for the resource `aws_ecs_cluster`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster). **The example below still needs to be tested and validated**.

## Description

Provides an ECS cluster.

~> **NOTE on Clusters and Cluster Capacity Providers:** Terraform provides both a standalone [`aws_ecs_cluster_capacity_providers`](/docs/providers/aws/r/ecs_cluster_capacity_providers.html) resource, as well as allowing the capacity providers and default strategies to be managed in-line by the `aws_ecs_cluster` resource. You cannot use a Cluster with in-line capacity providers in conjunction with the Capacity Providers resource, nor use more than one Capacity Providers resource with a single Cluster, as doing so will cause a conflict and will lead to mutual overwrites.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foo
  namespace: flux-system
spec:
  path: aws_ecs_cluster
  values:
    name: white-hart
    setting:
      name: containerInsights
      value: enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster#argument-reference) for the arguments accepted by the `aws_ecs_cluster` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster#attributes-reference) for the attributes exported by the `aws_ecs_cluster` resource.
