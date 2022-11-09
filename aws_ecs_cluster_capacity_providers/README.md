
# Primitive Module: aws_ecs_cluster_capacity_providers

This is the Weave TF-controller primitive module for the resource `aws_ecs_cluster_capacity_providers`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers). **The example below still needs to be tested and validated**.

## Description

Manages the capacity providers of an ECS Cluster.

More information about capacity providers can be found in the [ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-capacity-providers.html).

~> **NOTE on Clusters and Cluster Capacity Providers:** Terraform provides both a standalone `aws_ecs_cluster_capacity_providers` resource, as well as allowing the capacity providers and default strategies to be managed in-line by the [`aws_ecs_cluster`](/docs/providers/aws/r/ecs_cluster.html) resource. You cannot use a Cluster with in-line capacity providers in conjunction with the Capacity Providers resource, nor use more than one Capacity Providers resource with a single Cluster, as doing so will cause a conflict and will lead to mutual overwrites.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ecs_cluster_capacity_providers
  values:
    cluster_name: << name of an aws_ecs_cluster >>
    default_capacity_provider_strategy:
      base: 1
      capacity_provider: FARGATE
      weight: 100
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers#argument-reference) for the arguments accepted by the `aws_ecs_cluster_capacity_providers` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers#attributes-reference) for the attributes exported by the `aws_ecs_cluster_capacity_providers` resource.
