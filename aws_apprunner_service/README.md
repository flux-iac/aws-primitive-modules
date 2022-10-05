
# Primitive Module: aws_apprunner_service

This is the Weave TF-controller primitive module for the resource `aws_apprunner_service`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_service). **The example below still needs to be tested and validated**.

## Description

Manages an App Runner Service.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_apprunner_service
  values:
    network_configuration:
      egress_configuration:
        egress_type: VPC
        vpc_connector_arn: << arn of an aws_apprunner_vpc_connector >>
    service_name: example
    source_configuration:
      authentication_configuration:
        connection_arn: << arn of an aws_apprunner_connection >>
      code_repository:
        code_configuration:
          code_configuration_values:
            build_command: python setup.py develop
            port: "8000"
            runtime: PYTHON_3
            start_command: python runapp.py
          configuration_source: API
        repository_url: https://github.com/example/my-example-python-app
        source_code_version:
          type: BRANCH
          value: main
    tags:
      Name: example-apprunner-service
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_service#argument-reference) for the arguments accepted by the `aws_apprunner_service` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apprunner_service#attributes-reference) for the attributes exported by the `aws_apprunner_service` resource.
