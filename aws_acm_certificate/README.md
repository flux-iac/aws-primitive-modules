
# Primitive Module: aws_acm_certificate

This is the Weave TF-controller primitive module for resource `aws_acm_certificate`.

## Description

The ACM certificate resource allows requesting and management of certificates
from the Amazon Certificate Manager.

ACM certificates can be created in three ways:
Amazon-issued, where AWS provides the certificate authority and automatically manages renewal;
imported certificates, issued by another certificate authority;
and private certificates, issued using an ACM Private Certificate Authority.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: cert
  namespace: flux-system
spec:
  path: aws_acm_certificate
  values:
    domain_name: example.com
    lifecycle:
      create_before_destroy: true
    tags:
      Environment: test
    validation_method: DNS
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_acm_certificate` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_acm_certificate` resource.