
# Primitive Module: aws_docdb_event_subscription

This is the Weave TF-controller primitive module for the resource `aws_docdb_event_subscription`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_event_subscription). **The example below still needs to be tested and validated**.

## Description

Provides a DB event subscription resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_docdb_event_subscription
  values:
    enabled: true
    event_categories:
    - creation
    - failure
    name: example
    sns_topic_arn: << arn of an aws_sns_topic >>
    source_ids:
    - << id of an aws_docdb_cluster >>
    source_type: db-cluster
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_event_subscription#argument-reference) for the arguments accepted by the `aws_docdb_event_subscription` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_event_subscription#attributes-reference) for the attributes exported by the `aws_docdb_event_subscription` resource.
