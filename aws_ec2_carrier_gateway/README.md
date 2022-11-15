
# Primitive Module: aws_ec2_carrier_gateway

This is the Weave TF-controller primitive module for the resource `aws_ec2_carrier_gateway`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_carrier_gateway). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Carrier Gateway. See the AWS [documentation](https://docs.aws.amazon.com/vpc/latest/userguide/Carrier_Gateway.html) for more information.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_carrier_gateway
  values:
    tags:
      Name: example-carrier-gateway
    vpc_id: << id of an aws_vpc >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_carrier_gateway#argument-reference) for the arguments accepted by the `aws_ec2_carrier_gateway` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_carrier_gateway#attributes-reference) for the attributes exported by the `aws_ec2_carrier_gateway` resource.
