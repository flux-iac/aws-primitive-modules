
# Primitive Module: aws_dynamodb_kinesis_streaming_destination

This is the Weave TF-controller primitive module for the resource `aws_dynamodb_kinesis_streaming_destination`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_kinesis_streaming_destination). **The example below still needs to be tested and validated**.

## Description

Enables a [Kinesis streaming destination](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/kds.html) for data replication of a DynamoDB table.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_dynamodb_kinesis_streaming_destination
  values:
    stream_arn: << arn of an aws_kinesis_stream >>
    table_name: << name of an aws_dynamodb_table >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_kinesis_streaming_destination#argument-reference) for the arguments accepted by the `aws_dynamodb_kinesis_streaming_destination` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_kinesis_streaming_destination#attributes-reference) for the attributes exported by the `aws_dynamodb_kinesis_streaming_destination` resource.
