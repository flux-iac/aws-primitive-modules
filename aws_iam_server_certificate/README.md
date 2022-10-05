
# Primitive Module: aws_iam_server_certificate

This is the Weave TF-controller primitive module for the resource `aws_iam_server_certificate`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_server_certificate). **The example below still needs to be tested and validated**.

## Description

Provides an IAM Server Certificate resource to upload Server Certificates.
Certs uploaded to IAM can easily work with other AWS services such as:

- AWS Elastic Beanstalk
- Elastic Load Balancing
- CloudFront
- AWS OpsWorks

For information about server certificates in IAM, see [Managing Server
Certificates][2] in AWS Documentation.

~> **Note:** All arguments including the private key will be stored in the raw state as plain-text.
[Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-cert
  namespace: flux-system
spec:
  path: aws_iam_server_certificate
  values:
    certificate_body: ${file("self-ca-cert.pem")}
    name: some_test_cert
    private_key: ${file("test-key.pem")}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_server_certificate#argument-reference) for the arguments accepted by the `aws_iam_server_certificate` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_server_certificate#attributes-reference) for the attributes exported by the `aws_iam_server_certificate` resource.
