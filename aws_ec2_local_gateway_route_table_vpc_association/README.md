
# Primitive Module: aws_ec2_local_gateway_route_table_vpc_association

This is the Weave TF-controller primitive module for resource `aws_ec2_local_gateway_route_table_vpc_association`.

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
  approvalPlan: auto
  interval: 1h0m
```