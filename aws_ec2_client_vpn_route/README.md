
# Primitive Module: aws_ec2_client_vpn_route

This is the Weave TF-controller primitive module for the resource `aws_ec2_client_vpn_route`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_route). **The example below still needs to be tested and validated**.

## Description

Provides additional routes for AWS Client VPN endpoints. For more information on usage, please see the
[AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_client_vpn_route
  values:
    client_vpn_endpoint_id: << id of an aws_ec2_client_vpn_endpoint >>
    destination_cidr_block: 0.0.0.0/0
    target_vpc_subnet_id: << subnet_id of an aws_ec2_client_vpn_network_association >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_route#argument-reference) for the arguments accepted by the `aws_ec2_client_vpn_route` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_route#attributes-reference) for the attributes exported by the `aws_ec2_client_vpn_route` resource.
