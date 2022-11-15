
# Primitive Module: aws_ec2_transit_gateway_multicast_domain_association

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_multicast_domain_association`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_domain_association). **The example below still needs to be tested and validated**.

## Description

Associates the specified subnet and transit gateway attachment with the specified transit gateway multicast domain.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_multicast_domain_association
  values:
    subnet_id: << id of an aws_subnet >>
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_vpc_attachment >>
    transit_gateway_multicast_domain_id: << id of an aws_ec2_transit_gateway_multicast_domain >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_domain_association#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_multicast_domain_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_multicast_domain_association#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_multicast_domain_association` resource.
