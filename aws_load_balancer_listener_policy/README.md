
# Primitive Module: aws_load_balancer_listener_policy

This is the Weave TF-controller primitive module for the resource `aws_load_balancer_listener_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_listener_policy). **The example below still needs to be tested and validated**.

## Description

Attaches a load balancer policy to an ELB Listener.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: wu-tang-listener-policies-443
  namespace: flux-system
spec:
  path: aws_load_balancer_listener_policy
  values:
    load_balancer_name: ${aws_elb.wu-tang.name}
    load_balancer_port: 443
    policy_names:
    - ${aws_load_balancer_policy.wu-tang-ssl.policy_name}
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_listener_policy#argument-reference) for the arguments accepted by the `aws_load_balancer_listener_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_listener_policy#attributes-reference) for the attributes exported by the `aws_load_balancer_listener_policy` resource.
