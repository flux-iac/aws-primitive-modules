
# Primitive Module: aws_ecrpublic_repository_policy

This is the Weave TF-controller primitive module for the resource `aws_ecrpublic_repository_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecrpublic_repository_policy). **The example below still needs to be tested and validated**.

## Description

Provides an Elastic Container Registry Public Repository Policy.

Note that currently only one policy may be applied to a repository.

~> **NOTE:** This resource can only be used with `us-east-1` region.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ecrpublic_repository_policy
  values:
    policy: |
      {
          "Version": "2008-10-17",
          "Statement": [
              {
                  "Sid": "new policy",
                  "Effect": "Allow",
                  "Principal": "*",
                  "Action": [
                      "ecr:GetDownloadUrlForLayer",
                      "ecr:BatchGetImage",
                      "ecr:BatchCheckLayerAvailability",
                      "ecr:PutImage",
                      "ecr:InitiateLayerUpload",
                      "ecr:UploadLayerPart",
                      "ecr:CompleteLayerUpload",
                      "ecr:DescribeRepositories",
                      "ecr:GetRepositoryPolicy",
                      "ecr:ListImages",
                      "ecr:DeleteRepository",
                      "ecr:BatchDeleteImage",
                      "ecr:SetRepositoryPolicy",
                      "ecr:DeleteRepositoryPolicy"
                  ]
              }
          ]
      }
    repository_name: << repository_name of an aws_ecrpublic_repository >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecrpublic_repository_policy#argument-reference) for the arguments accepted by the `aws_ecrpublic_repository_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecrpublic_repository_policy#attributes-reference) for the attributes exported by the `aws_ecrpublic_repository_policy` resource.
