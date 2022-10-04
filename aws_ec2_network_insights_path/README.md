
# Primitive Module: aws_ec2_network_insights_path

This is the Weave TF-controller primitive module for resource `aws_ec2_network_insights_path`.

## Description

Provides a Network Insights Path resource. Part of the "Reachability Analyzer" service in the AWS VPC console.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_ec2_network_insights_path
  values:
    destination: << id of an aws_network_interface >>
    protocol: tcp
    source: << id of an aws_network_interface >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_ec2_network_insights_path` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_network_insights_path` resource.
