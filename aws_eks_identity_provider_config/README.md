
# Primitive Module: aws_eks_identity_provider_config

This is the Weave TF-controller primitive module for the resource `aws_eks_identity_provider_config`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_identity_provider_config). **The example below still needs to be tested and validated**.

## Description

Manages an EKS Identity Provider Configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_eks_identity_provider_config
  values:
    cluster_name: << name of an aws_eks_cluster >>
    oidc:
      client_id: your client_id
      identity_provider_config_name: example
      issuer_url: your issuer_url
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_identity_provider_config#argument-reference) for the arguments accepted by the `aws_eks_identity_provider_config` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_identity_provider_config#attributes-reference) for the attributes exported by the `aws_eks_identity_provider_config` resource.
