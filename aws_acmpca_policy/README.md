
# Primitive Module: aws_acmpca_policy

This is the Weave TF-controller primitive module for the resource `aws_acmpca_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_policy). **The example below still needs to be tested and validated**.

## Description

Attaches a resource based policy to a private CA.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_acmpca_policy
  values:
    policy: "{                        \n   \"Version\":\"2012-10-17\",\n   \"Statement\":[\n
      \     {    \n         \"Sid\":\"1\",\n         \"Effect\":\"Allow\",         \n
      \        \"Principal\":{                                                                                                                                               \n
      \           \"AWS\":\"<< current.account_id of a data >>\"                                                                                \n
      \        },\n         \"Action\":[\n            \"acm-pca:DescribeCertificateAuthority\",\n
      \           \"acm-pca:GetCertificate\",\n            \"acm-pca:GetCertificateAuthorityCertificate\",\n
      \           \"acm-pca:ListPermissions\",\n            \"acm-pca:ListTags\"                                                                                   \n
      \        ],                                                                                              \n
      \        \"Resource\":\"<< arn of an aws_acmpca_certificate_authority >>\"\n      },\n
      \     {\n         \"Sid\":\"1\",  \n         \"Effect\":\"Allow\",\n         \"Principal\":{\n
      \           \"AWS\":\"<< current.account_id of a data >>\"\n         },\n
      \        \"Action\":[\n            \"acm-pca:IssueCertificate\"\n         ],\n         \"Resource\":\"<< arn of an aws_acmpca_certificate_authority >>\",\n
      \        \"Condition\":{\n            \"StringEquals\":{\n               \"acm-pca:TemplateArn\":\"arn:aws:acm-pca:::template/EndEntityCertificate/V1\"\n
      \           }\n         }\n      }\n   ]\n}\n"
    resource_arn: << arn of an aws_acmpca_certificate_authority >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_policy#argument-reference) for the arguments accepted by the `aws_acmpca_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_policy#attributes-reference) for the attributes exported by the `aws_acmpca_policy` resource.
