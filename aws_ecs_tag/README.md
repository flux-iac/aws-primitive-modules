
# Primitive Module: aws_ecs_tag

This is the Weave TF-controller primitive module for the resource `aws_ecs_tag`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_tag). **The example below still needs to be tested and validated**.

## Description

Manages an individual ECS resource tag. This resource should only be used in cases where ECS resources are created outside Terraform (e.g., ECS Clusters implicitly created by Batch Compute Environments).

~> **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using `aws_ecs_cluster` and `aws_ecs_tag` to manage tags of the same ECS Cluster will cause a perpetual difference where the `aws_ecs_cluster` resource will try to remove the tag being added by the `aws_ecs_tag` resource.

~> **NOTE:** This tagging resource does not use the [provider `ignore_tags` configuration](/docs/providers/aws/index.html#ignore_tags).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ecs_tag
  values:
    key: Name
    resource_arn: << ecs_cluster_arn of an aws_batch_compute_environment >>
    value: Hello World
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_tag#argument-reference) for the arguments accepted by the `aws_ecs_tag` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_tag#attributes-reference) for the attributes exported by the `aws_ecs_tag` resource.
