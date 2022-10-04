
# Primitive Module: aws_ec2_transit_gateway_multicast_domain_association

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_multicast_domain_association`.

## Description

Associates the specified subnet and transit gateway attachment with the specified transit gateway multicast domain.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_multicast_domain_association
  values:
    subnet_id: << id of an aws_subnet >>
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_vpc_attachment >>
    transit_gateway_multicast_domain_id: << id of an aws_ec2_transit_gateway_multicast_domain >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by `aws_ec2_transit_gateway_multicast_domain_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_multicast_domain_association` resource.
