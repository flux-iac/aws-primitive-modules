
# Primitive Module: aws_ec2_network_insights_analysis

This is the Weave TF-controller primitive module for the resource `aws_ec2_network_insights_analysis`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_network_insights_analysis). **The example below still needs to be tested and validated**.

## Description

Provides a Network Insights Analysis resource. Part of the "Reachability Analyzer" service in the AWS VPC console.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: analysis
  namespace: flux-system
spec:
  path: aws_ec2_network_insights_analysis
  values:
    network_insights_path_id: << id of an aws_ec2_network_insights_path >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_network_insights_analysis#argument-reference) for the arguments accepted by the `aws_ec2_network_insights_analysis` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_network_insights_analysis#attributes-reference) for the attributes exported by the `aws_ec2_network_insights_analysis` resource.
