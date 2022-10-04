
# Primitive Module: aws_ec2_client_vpn_authorization_rule

This is the Weave TF-controller primitive module for resource `aws_ec2_client_vpn_authorization_rule`.

## Description

Provides authorization rules for AWS Client VPN endpoints. For more information on usage, please see the
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
  path: aws_ec2_client_vpn_authorization_rule
  values:
    authorize_all_groups: true
    client_vpn_endpoint_id: << id of an aws_ec2_client_vpn_endpoint >>
    target_network_cidr: << cidr_block of an aws_subnet >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_ec2_client_vpn_authorization_rule` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_client_vpn_authorization_rule` resource.
