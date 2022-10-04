
# Primitive Module: aws_iam_openid_connect_provider

This is the Weave TF-controller primitive module for resource `aws_iam_openid_connect_provider`.

## Description

Provides an IAM OpenID Connect provider.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: default
  namespace: flux-system
spec:
  path: aws_iam_openid_connect_provider
  values:
    client_id_list:
    - 266362248691-342342xasdasdasda-apps.googleusercontent.com
    thumbprint_list: []
    url: https://accounts.google.com
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by `aws_iam_openid_connect_provider` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_iam_openid_connect_provider` resource.
