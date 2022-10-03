
# Primitive Module: aws_ec2_carrier_gateway

This is the Weave TF-controller primitive module for resource `aws_ec2_carrier_gateway`.

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
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
