
# Primitive Module: aws_ami_copy

This is the Weave TF-controller primitive module for resource `aws_ami_copy`.

~> **NOTE:** This primitive module is automatically generated from the Terraform provider [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami_copy). **The example below still needs to be tested and validated**.

## Description

The "AMI copy" resource allows duplication of an Amazon Machine Image (AMI),
including cross-region copies.

If the source AMI has associated EBS snapshots, those will also be duplicated
along with the AMI.

This is useful for taking a single AMI provisioned in one region and making
it available in another for a multi-region deployment.

Copying an AMI can take several minutes. The creation of this resource will
block until the new AMI is available for use on new instances.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ami_copy
  values:
    description: A copy of ami-xxxxxxxx
    name: terraform-example
    source_ami_id: ami-xxxxxxxx
    source_ami_region: us-west-1
    tags:
      Name: HelloWorld
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami_copy#argument-reference) for the arguments accepted by the `aws_ami_copy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami_copy#attributes-reference) for the attributes exported by the `aws_ami_copy` resource.
