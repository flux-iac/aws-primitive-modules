
# Primitive Module: aws_ecr_lifecycle_policy

This is the Weave TF-controller primitive module for the resource `aws_ecr_lifecycle_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy). **The example below still needs to be tested and validated**.

## Description

Manages an ECR repository lifecycle policy.

~> **NOTE:** Only one `aws_ecr_lifecycle_policy` resource can be used with the same ECR repository. To apply multiple rules, they must be combined in the `policy` JSON.

~> **NOTE:** The AWS ECR API seems to reorder rules based on `rulePriority`. If you define multiple rules that are not sorted in ascending `rulePriority` order in the Terraform code, the resource will be flagged for recreation every `terraform plan`.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: foopolicy
  namespace: flux-system
spec:
  path: aws_ecr_lifecycle_policy
  values:
    policy: |
      {
          "rules": [
              {
                  "rulePriority": 1,
                  "description": "Expire images older than 14 days",
                  "selection": {
                      "tagStatus": "untagged",
                      "countType": "sinceImagePushed",
                      "countUnit": "days",
                      "countNumber": 14
                  },
                  "action": {
                      "type": "expire"
                  }
              }
          ]
      }
    repository: << name of an aws_ecr_repository >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy#argument-reference) for the arguments accepted by the `aws_ecr_lifecycle_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy#attributes-reference) for the attributes exported by the `aws_ecr_lifecycle_policy` resource.
