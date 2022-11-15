
# Primitive Module: aws_dynamodb_tag

This is the Weave TF-controller primitive module for the resource `aws_dynamodb_tag`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_tag). **The example below still needs to be tested and validated**.

## Description

Manages an individual DynamoDB resource tag. This resource should only be used in cases where DynamoDB resources are created outside Terraform (e.g., Table replicas in other regions).

~> **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using `aws_dynamodb_table` and `aws_dynamodb_tag` to manage tags of the same DynamoDB Table in the same region will cause a perpetual difference where the `aws_dynamodb_cluster` resource will try to remove the tag being added by the `aws_dynamodb_tag` resource.

~> **NOTE:** This tagging resource does not use the [provider `ignore_tags` configuration](/docs/providers/aws/index.html#ignore_tags).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_dynamodb_tag
  values:
    key: testkey
    provider: aws.replica
    resource_arn: ${replace(aws_dynamodb_table.test.arn, data.aws_region.current.name,
      data.aws_region.replica.name)}
    value: testvalue
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_tag#argument-reference) for the arguments accepted by the `aws_dynamodb_tag` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_tag#attributes-reference) for the attributes exported by the `aws_dynamodb_tag` resource.
