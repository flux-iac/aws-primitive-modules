
# Primitive Module: aws_ec2_transit_gateway_connect_peer

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_connect_peer`.

## Description

Manages an EC2 Transit Gateway Connect Peer.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_connect_peer
  values:
    inside_cidr_blocks: 169.254.100.0/29
    peer_address: 10.1.2.3
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_connect >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
