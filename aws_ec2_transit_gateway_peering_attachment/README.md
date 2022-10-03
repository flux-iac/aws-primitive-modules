
# Primitive Module: aws_ec2_transit_gateway_peering_attachment

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_peering_attachment`.

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
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
