
# Primitive Module: aws_load_balancer_policy

This is the Weave TF-controller primitive module for the resource `aws_load_balancer_policy`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_policy). **The example below still needs to be tested and validated**.

## Description

Provides a load balancer policy, which can be attached to an ELB listener or backend server.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: wu-tang-ca-pubkey-policy
  namespace: flux-system
spec:
  path: aws_load_balancer_policy
  values:
    load_balancer_name: ${aws_elb.wu-tang.name}
    policy_attribute:
      name: PublicKey
      value: ${file("wu-tang-pubkey")}
    policy_name: wu-tang-ca-pubkey-policy
    policy_type_name: PublicKeyPolicyType
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: wu-tang-root-ca-backend-auth-policy
  namespace: flux-system
spec:
  path: aws_load_balancer_policy
  values:
    load_balancer_name: ${aws_elb.wu-tang.name}
    policy_attribute:
      name: PublicKeyPolicyName
      value: ${aws_load_balancer_policy.wu-tang-root-ca-pubkey-policy.policy_name}
    policy_name: wu-tang-root-ca-backend-auth-policy
    policy_type_name: BackendServerAuthenticationPolicyType
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: wu-tang-ssl
  namespace: flux-system
spec:
  path: aws_load_balancer_policy
  values:
    load_balancer_name: ${aws_elb.wu-tang.name}
    policy_attribute:
    - name: ECDHE-ECDSA-AES128-GCM-SHA256
      value: "true"
    - name: Protocol-TLSv1.2
      value: "true"
    policy_name: wu-tang-ssl
    policy_type_name: SSLNegotiationPolicyType
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: wu-tang-ssl-tls-1-1
  namespace: flux-system
spec:
  path: aws_load_balancer_policy
  values:
    load_balancer_name: ${aws_elb.wu-tang.name}
    policy_attribute:
      name: Reference-Security-Policy
      value: ELBSecurityPolicy-TLS-1-1-2017-01
    policy_name: wu-tang-ssl
    policy_type_name: SSLNegotiationPolicyType
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.38.0
  approvePlan: auto
  interval: 1h0m
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_policy#argument-reference) for the arguments accepted by the `aws_load_balancer_policy` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/load_balancer_policy#attributes-reference) for the attributes exported by the `aws_load_balancer_policy` resource.
