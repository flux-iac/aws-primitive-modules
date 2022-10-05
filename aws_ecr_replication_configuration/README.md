
# Primitive Module: aws_ecr_replication_configuration

This is the Weave TF-controller primitive module for the resource `aws_ecr_replication_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_replication_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an Elastic Container Registry Replication Configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ecr_replication_configuration
  values:
    replication_configuration:
      rule:
        destination:
          region: ${data.aws_regions.example.names[0]}
          registry_id: << current.account_id of a data >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_replication_configuration#argument-reference) for the arguments accepted by the `aws_ecr_replication_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_replication_configuration#attributes-reference) for the attributes exported by the `aws_ecr_replication_configuration` resource.
