
# Primitive Module: aws_prometheus_alert_manager_definition

This is the Weave TF-controller primitive module for the resource `aws_prometheus_alert_manager_definition`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_alert_manager_definition). **The example below still needs to be tested and validated**.

## Description

Manages an Amazon Managed Service for Prometheus (AMP) Alert Manager Definition

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: demo
  namespace: flux-system
spec:
  path: aws_prometheus_alert_manager_definition
  values:
    definition: |
      alertmanager_config: |
        route:
          receiver: 'default'
        receivers:
          - name: 'default'
    workspace_id: << id of an aws_prometheus_workspace >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_alert_manager_definition#argument-reference) for the arguments accepted by the `aws_prometheus_alert_manager_definition` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_alert_manager_definition#attributes-reference) for the attributes exported by the `aws_prometheus_alert_manager_definition` resource.
