
# Primitive Module: aws_ec2_local_gateway_route

This is the Weave TF-controller primitive module for the resource `aws_ec2_local_gateway_route`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_local_gateway_route). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Local Gateway Route. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_local_gateway_route
  values:
    destination_cidr_block: 172.16.0.0/16
    local_gateway_route_table_id: << example.id of a data >>
    local_gateway_virtual_interface_group_id: << example.id of a data >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_local_gateway_route#argument-reference) for the arguments accepted by the `aws_ec2_local_gateway_route` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_local_gateway_route#attributes-reference) for the attributes exported by the `aws_ec2_local_gateway_route` resource.
