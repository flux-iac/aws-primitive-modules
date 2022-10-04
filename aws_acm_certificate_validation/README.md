
# Primitive Module: aws_acm_certificate_validation

This is the Weave TF-controller primitive module for resource `aws_acm_certificate_validation`.

## Description

This resource represents a successful validation of an ACM certificate in concert
with other resources.

Most commonly, this resource is used together with [`aws_route53_record`](route53_record.html) and
[`aws_acm_certificate`](acm_certificate.html) to request a DNS validated certificate,
deploy the required validation records and wait for validation to complete.

~> **WARNING:** This resource implements a part of the validation workflow. It does not represent a real-world entity in AWS, therefore changing or deleting this resource on its own has no immediate effect.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_acm_certificate_validation
  values:
    certificate_arn: << arn of an aws_acm_certificate >>
    validation_record_fqdns: '${[for record in aws_route53_record.example : record.fqdn]}'
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#argument-reference) for the arguments accepted by the `aws_acm_certificate_validation` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/4.33.0/docs/resources/iam_policy#attributes-reference) for the attributes exported by the `aws_acm_certificate_validation` resource.
