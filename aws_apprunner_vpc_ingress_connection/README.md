
# Primitive Module: aws_apprunner_vpc_ingress_connection

This is the Weave TF-controller primitive module for the resource `aws_apprunner_vpc_ingress_connection`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_vpc_ingress_connection). **The example below still needs to be tested and validated**.

## Description

Manages an App Runner VPC Ingress Connection.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_apprunner_vpc_ingress_connection
  values:
    ingress_vpc_configuration:
    - vpc_endpoint_id: << id of an aws_vpc_endpoint >>
      vpc_id: << id of an aws_default_vpc >>
    name: example
    service_arn: << arn of an aws_apprunner_service >>
    tags:
      foo: bar
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_vpc_ingress_connection#argument-reference) for the arguments accepted by the `aws_apprunner_vpc_ingress_connection` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_vpc_ingress_connection#attributes-reference) for the attributes exported by the `aws_apprunner_vpc_ingress_connection` resource.
