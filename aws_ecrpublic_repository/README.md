
# Primitive Module: aws_ecrpublic_repository

This is the Weave TF-controller primitive module for the resource `aws_ecrpublic_repository`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecrpublic_repository). **The example below still needs to be tested and validated**.

## Description

Provides a Public Elastic Container Registry Repository.

~> **NOTE:** This resource can only be used with `us-east-1` region.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foo
  namespace: flux-system
spec:
  path: aws_ecrpublic_repository
  values:
    catalog_data:
      about_text: About Text
      description: Description
      logo_image_blob: ${filebase64(image.png)}
      usage_text: Usage Text
    provider: aws.us_east_1
    repository_name: bar
    tags:
      env: production
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecrpublic_repository#argument-reference) for the arguments accepted by the `aws_ecrpublic_repository` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecrpublic_repository#attributes-reference) for the attributes exported by the `aws_ecrpublic_repository` resource.
