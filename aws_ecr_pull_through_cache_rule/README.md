
# Primitive Module: aws_ecr_pull_through_cache_rule

This is the Weave TF-controller primitive module for resource `aws_ecr_pull_through_cache_rule`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_pull_through_cache_rule). **The example below still needs to be tested and validated**.

## Description

Provides an Elastic Container Registry Pull Through Cache Rule.

More information about pull through cache rules, including the set of supported
upstream repositories, see [Using pull through cache rules](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ecr_pull_through_cache_rule
  values:
    ecr_repository_prefix: ecr-public
    upstream_registry_url: public.ecr.aws
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_pull_through_cache_rule#argument-reference) for the arguments accepted by the `aws_ecr_pull_through_cache_rule` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_pull_through_cache_rule#attributes-reference) for the attributes exported by the `aws_ecr_pull_through_cache_rule` resource.
