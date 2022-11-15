
# Primitive Module: aws_appstream_stack

This is the Weave TF-controller primitive module for the resource `aws_appstream_stack`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_stack). **The example below still needs to be tested and validated**.

## Description

Provides an AppStream stack.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_appstream_stack
  values:
    application_settings:
    - enabled: true
      settings_group: SettingsGroup
    description: stack description
    display_name: stack display name
    feedback_url: http://your-domain/feedback
    name: stack name
    redirect_url: http://your-domain/redirect
    storage_connectors:
    - connector_type: HOMEFOLDERS
    tags:
      TagName: TagValue
    user_settings:
    - action: CLIPBOARD_COPY_FROM_LOCAL_DEVICE
      permission: ENABLED
    - action: CLIPBOARD_COPY_TO_LOCAL_DEVICE
      permission: ENABLED
    - action: FILE_UPLOAD
      permission: ENABLED
    - action: FILE_DOWNLOAD
      permission: ENABLED
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_stack#argument-reference) for the arguments accepted by the `aws_appstream_stack` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appstream_stack#attributes-reference) for the attributes exported by the `aws_appstream_stack` resource.
