
# Primitive Module: aws_ec2_transit_gateway_peering_attachment

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_peering_attachment`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway Peering Attachment.
For examples of custom route table association and propagation, see the [EC2 Transit Gateway Networking Examples Guide](https://docs.aws.amazon.com/vpc/latest/tgw/TGW_Scenarios.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_peering_attachment
  values:
    peer_account_id: << owner_id of an aws_ec2_transit_gateway >>
    peer_region: << peer.name of a data >>
    peer_transit_gateway_id: << id of an aws_ec2_transit_gateway >>
    tags:
      Name: TGW Peering Requestor
    transit_gateway_id: << id of an aws_ec2_transit_gateway >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_peering_attachment` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_peering_attachment` resource.
