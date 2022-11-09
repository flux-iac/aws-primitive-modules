
# Primitive Module: aws_apprunner_vpc_connector

This is the Weave TF-controller primitive module for the resource `aws_apprunner_vpc_connector`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_vpc_connector). **The example below still needs to be tested and validated**.

## Description

Manages an App Runner VPC Connector.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: connector
  namespace: flux-system
spec:
  path: aws_apprunner_vpc_connector
  values:
    security_groups:
    - sg1
    - sg2
    subnets:
    - subnet1
    - subnet2
    vpc_connector_name: name
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_vpc_connector#argument-reference) for the arguments accepted by the `aws_apprunner_vpc_connector` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_vpc_connector#attributes-reference) for the attributes exported by the `aws_apprunner_vpc_connector` resource.
