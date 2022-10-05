
# Primitive Module: aws_ec2_local_gateway_route_table_vpc_association

This is the Weave TF-controller primitive module for the resource `aws_ec2_local_gateway_route_table_vpc_association`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_local_gateway_route_table_vpc_association). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Local Gateway Route Table VPC Association. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-local-gateways.html#vpc-associations).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_local_gateway_route_table_vpc_association
  values:
    local_gateway_route_table_id: << example.id of a data >>
    vpc_id: << id of an aws_vpc >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_local_gateway_route_table_vpc_association#argument-reference) for the arguments accepted by the `aws_ec2_local_gateway_route_table_vpc_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_local_gateway_route_table_vpc_association#attributes-reference) for the attributes exported by the `aws_ec2_local_gateway_route_table_vpc_association` resource.
