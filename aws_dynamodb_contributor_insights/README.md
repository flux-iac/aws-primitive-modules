
# Primitive Module: aws_dynamodb_contributor_insights

This is the Weave TF-controller primitive module for the resource `aws_dynamodb_contributor_insights`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_contributor_insights). **The example below still needs to be tested and validated**.

## Description

Provides a DynamoDB contributor insights resource

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_dynamodb_contributor_insights
  values:
    table_name: ExampleTableName
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_contributor_insights#argument-reference) for the arguments accepted by the `aws_dynamodb_contributor_insights` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_contributor_insights#attributes-reference) for the attributes exported by the `aws_dynamodb_contributor_insights` resource.
