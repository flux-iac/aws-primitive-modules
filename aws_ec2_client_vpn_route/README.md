
# Primitive Module: aws_ec2_client_vpn_route

This is the Weave TF-controller primitive module for resource `aws_ec2_client_vpn_route`.

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
  approvalPlan: auto
  interval: 1h0m
```
