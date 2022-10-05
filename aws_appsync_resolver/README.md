
# Primitive Module: aws_appsync_resolver

This is the Weave TF-controller primitive module for the resource `aws_appsync_resolver`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_resolver). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync Resolver.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: mutation-pipeline-test
  namespace: flux-system
spec:
  path: aws_appsync_resolver
  values:
    api_id: << id of an aws_appsync_graphql_api >>
    field: pipelineTest
    kind: PIPELINE
    pipeline_config:
      functions:
      - << function_id of an aws_appsync_function >>
      - << function_id of an aws_appsync_function >>
      - << function_id of an aws_appsync_function >>
    request_template: '{}'
    response_template: $util.toJson($ctx.result)
    type: Mutation
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_appsync_resolver
  values:
    api_id: << id of an aws_appsync_graphql_api >>
    caching_config:
      caching_keys:
      - $context.identity.sub
      - $context.arguments.id
      ttl: 60
    data_source: << name of an aws_appsync_datasource >>
    field: singlePost
    request_template: |
      {
          "version": "2018-05-29",
          "method": "GET",
          "resourcePath": "/",
          "params":{
              "headers": $utils.http.copyheaders($ctx.request.headers)
          }
      }
    response_template: |
      #if($ctx.result.statusCode == 200)
          $ctx.result.body
      #else
          $utils.appendError($ctx.result.body, $ctx.result.statusCode)
      #end
    type: Query
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_resolver#argument-reference) for the arguments accepted by the `aws_appsync_resolver` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_resolver#attributes-reference) for the attributes exported by the `aws_appsync_resolver` resource.
