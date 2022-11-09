
# Primitive Module: aws_prometheus_rule_group_namespace

This is the Weave TF-controller primitive module for the resource `aws_prometheus_rule_group_namespace`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_rule_group_namespace). **The example below still needs to be tested and validated**.

## Description

Manages an Amazon Managed Service for Prometheus (AMP) Rule Group Namespace

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: demo
  namespace: flux-system
spec:
  path: aws_prometheus_rule_group_namespace
  values:
    data: |
      groups:
        - name: test
          rules:
          - record: metric:recording_rule
            expr: avg(rate(container_cpu_usage_seconds_total[5m]))
    name: rules
    workspace_id: << id of an aws_prometheus_workspace >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_rule_group_namespace#argument-reference) for the arguments accepted by the `aws_prometheus_rule_group_namespace` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/prometheus_rule_group_namespace#attributes-reference) for the attributes exported by the `aws_prometheus_rule_group_namespace` resource.
