
# Primitive Module: aws_ec2_transit_gateway_peering_attachment_accepter

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_peering_attachment_accepter`.

## Description

Manages the accepter's side of an EC2 Transit Gateway Peering Attachment.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_peering_attachment_accepter
  values:
    tags:
      Name: Example cross-account attachment
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_peering_attachment >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
