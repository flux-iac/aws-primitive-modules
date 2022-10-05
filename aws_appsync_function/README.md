
# Primitive Module: aws_appsync_function

This is the Weave TF-controller primitive module for the resource `aws_appsync_function`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_function). **The example below still needs to be tested and validated**.

## Description

Provides an AppSync Function.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appsync_function
  values:
    api_id: << id of an aws_appsync_graphql_api >>
    data_source: << name of an aws_appsync_datasource >>
    name: example
    request_mapping_template: |
      {
          "version": "2018-05-29",
          "method": "GET",
          "resourcePath": "/",
          "params":{
              "headers": $utils.http.copyheaders($ctx.request.headers)
          }
      }
    response_mapping_template: |
      #if($ctx.result.statusCode == 200)
          $ctx.result.body
      #else
          $utils.appendError($ctx.result.body, $ctx.result.statusCode)
      #end
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_function#argument-reference) for the arguments accepted by the `aws_appsync_function` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appsync_function#attributes-reference) for the attributes exported by the `aws_appsync_function` resource.
