
# Primitive Module: aws_load_balancer_backend_server_policy

This is the Weave TF-controller primitive module for the resource `aws_load_balancer_backend_server_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_backend_server_policy). **The example below still needs to be tested and validated**.

## Description

Attaches a load balancer policy to an ELB backend server.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: wu-tang-backend-auth-policies-443
  namespace: flux-system
spec:
  path: aws_load_balancer_backend_server_policy
  values:
    instance_port: 443
    load_balancer_name: ${aws_elb.wu-tang.name}
    policy_names:
    - ${aws_load_balancer_policy.wu-tang-root-ca-backend-auth-policy.policy_name}
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_backend_server_policy#argument-reference) for the arguments accepted by the `aws_load_balancer_backend_server_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_backend_server_policy#attributes-reference) for the attributes exported by the `aws_load_balancer_backend_server_policy` resource.
