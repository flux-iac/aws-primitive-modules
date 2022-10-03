
# Primitive Module: aws_ec2_local_gateway_route

This is the Weave TF-controller primitive module for resource `aws_ec2_local_gateway_route`.

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
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```