
# Primitive Module: aws_eks_identity_provider_config

This is the Weave TF-controller primitive module for resource `aws_eks_identity_provider_config`.

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
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_eks_identity_provider_config` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_eks_identity_provider_config` resource.
