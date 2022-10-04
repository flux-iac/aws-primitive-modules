
# Primitive Module: aws_ec2_transit_gateway_connect

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_connect`.

## Description

Manages an EC2 Transit Gateway Connect.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: attachment
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_connect
  values:
    transit_gateway_id: << id of an aws_ec2_transit_gateway >>
    transport_attachment_id: << id of an aws_ec2_transit_gateway_vpc_attachment >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_connect` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_connect` resource.
