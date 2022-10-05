
# Primitive Module: aws_ecr_registry_policy

This is the Weave TF-controller primitive module for the resource `aws_ecr_registry_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_registry_policy). **The example below still needs to be tested and validated**.

## Description

Provides an Elastic Container Registry Policy.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ecr_registry_policy
  values:
    policy: |-
      ${jsonencode({
          Version = "2012-10-17",
          Statement = [
            {
              Sid    = "testpolicy",
              Effect = "Allow",
              Principal = {
                "AWS" : "arn:<< current.partition of a data >>:iam::<< current.account_id of a data >>:root"
              },
              Action = [
                "ecr:ReplicateImage"
              ],
              Resource = [
                "arn:<< current.partition of a data >>:ecr:<< current.name of a data >>:<< current.account_id of a data >>:repository/*"
              ]
            }
          ]
        })}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_registry_policy#argument-reference) for the arguments accepted by the `aws_ecr_registry_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_registry_policy#attributes-reference) for the attributes exported by the `aws_ecr_registry_policy` resource.
