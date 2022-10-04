
# Primitive Module: aws_ec2_managed_prefix_list

This is the Weave TF-controller primitive module for resource `aws_ec2_managed_prefix_list`.

## Description

Provides a managed prefix list resource.

~> **NOTE on Managed Prefix Lists and Managed Prefix List Entries:** Terraform
currently provides both a standalone [Managed Prefix List Entry resource](ec2_managed_prefix_list_entry.html) (a single entry),
and a Managed Prefix List resource with entries defined in-line. At this time you
cannot use a Managed Prefix List with in-line rules in conjunction with any Managed
Prefix List Entry resources. Doing so will cause a conflict of entries and will overwrite entries.

~> **NOTE on `max_entries`:** When you reference a Prefix List in a resource,
the maximum number of entries for the prefix lists counts as the same number of rules
or entries for the resource. For example, if you create a prefix list with a maximum
of 20 entries and you reference that prefix list in a security group rule, this counts
as 20 rules for the security group.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_managed_prefix_list
  values:
    address_family: IPv4
    entry:
    - cidr: << cidr_block of an aws_vpc >>
      description: Primary
    - cidr: << cidr_block of an aws_vpc_ipv4_cidr_block_association >>
      description: Secondary
    max_entries: 5
    name: All VPC CIDR-s
    tags:
      Env: live
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_ec2_managed_prefix_list` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_ec2_managed_prefix_list` resource.
