
# Primitive Module: aws_ec2_transit_gateway_prefix_list_reference

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_prefix_list_reference`.

## Description

Manages an EC2 Transit Gateway Prefix List Reference.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_prefix_list_reference
  values:
    prefix_list_id: << id of an aws_ec2_managed_prefix_list >>
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_vpc_attachment >>
    transit_gateway_route_table_id: << association_default_route_table_id of an aws_ec2_transit_gateway >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_prefix_list_reference` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_prefix_list_reference` resource.
