
# Primitive Module: aws_appsync_domain_name_api_association

This is the Weave TF-controller primitive module for the resource `aws_appsync_domain_name_api_association`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_domain_name_api_association). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync API Association.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appsync_domain_name_api_association
  values:
    api_id: << id of an aws_appsync_graphql_api >>
    domain_name: << domain_name of an aws_appsync_domain_name >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_domain_name_api_association#argument-reference) for the arguments accepted by the `aws_appsync_domain_name_api_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_domain_name_api_association#attributes-reference) for the attributes exported by the `aws_appsync_domain_name_api_association` resource.
