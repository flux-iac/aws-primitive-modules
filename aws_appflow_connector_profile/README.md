
# Primitive Module: aws_appflow_connector_profile

This is the Weave TF-controller primitive module for the resource `aws_appflow_connector_profile`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appflow_connector_profile). **The example below still needs to be tested and validated**.

## Description

Provides an AppFlow connector profile resource.

For information about AppFlow flows, see the [Amazon AppFlow API Reference][1].
For specific information about creating an AppFlow connector profile, see the
[CreateConnectorProfile][2] page in the Amazon AppFlow API Reference.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appflow_connector_profile
  values:
    connection_mode: Public
    connector_profile_config:
    - connector_profile_credentials:
      - redshift:
        - password: << master_password of an aws_redshift_cluster >>
          username: << master_username of an aws_redshift_cluster >>
      connector_profile_properties:
      - redshift:
        - bucket_name: << name of an aws_s3_bucket >>
          database_url: jdbc:redshift://<< endpoint of an aws_redshift_cluster >>/<< database_name of an aws_redshift_cluster >>
          role_arn: << arn of an aws_iam_role >>
    connector_type: Redshift
    name: example_profile
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appflow_connector_profile#argument-reference) for the arguments accepted by the `aws_appflow_connector_profile` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appflow_connector_profile#attributes-reference) for the attributes exported by the `aws_appflow_connector_profile` resource.
