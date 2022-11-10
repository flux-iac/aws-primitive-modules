
# Primitive Module: aws_ec2_client_vpn_endpoint

This is the Weave TF-controller primitive module for the resource `aws_ec2_client_vpn_endpoint`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_endpoint). **The example below still needs to be tested and validated**.

## Description

Provides an AWS Client VPN endpoint for OpenVPN clients. For more information on usage, please see the
[AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).

~> **NOTE on Client VPN endpoint target network security groups:** Terraform provides both a standalone [Client VPN endpoint network association](ec2_client_vpn_network_association.html) resource with a (deprecated) `security_groups` argument and a Client VPN endpoint resource with a `security_group_ids` argument. Do not specify security groups in both resources. Doing so will cause a conflict and will overwrite the target network security group association.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_client_vpn_endpoint
  values:
    authentication_options:
    - root_certificate_chain_arn: << arn of an aws_acm_certificate >>
      type: certificate-authentication
    client_cidr_block: 10.0.0.0/16
    connection_log_options:
    - cloudwatch_log_group: << name of an aws_cloudwatch_log_group >>
      cloudwatch_log_stream: << name of an aws_cloudwatch_log_stream >>
      enabled: true
    description: terraform-clientvpn-example
    server_certificate_arn: << arn of an aws_acm_certificate >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_endpoint#argument-reference) for the arguments accepted by the `aws_ec2_client_vpn_endpoint` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_endpoint#attributes-reference) for the attributes exported by the `aws_ec2_client_vpn_endpoint` resource.
