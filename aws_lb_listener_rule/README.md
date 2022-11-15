
# Primitive Module: aws_lb_listener_rule

This is the Weave TF-controller primitive module for the resource `aws_lb_listener_rule`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule). **The example below still needs to be tested and validated**.

## Description

Provides a Load Balancer Listener Rule resource.

~> **Note:** `aws_alb_listener_rule` is known as `aws_lb_listener_rule`. The functionality is identical.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: admin
  namespace: flux-system
spec:
  path: aws_lb_listener_rule
  values:
    action:
    - authenticate_cognito:
      - user_pool_arn: << arn of an aws_cognito_user_pool >>
        user_pool_client_id: << id of an aws_cognito_user_pool_client >>
        user_pool_domain: << domain of an aws_cognito_user_pool_domain >>
      type: authenticate-cognito
    - target_group_arn: << arn of an aws_lb_target_group >>
      type: forward
    listener_arn: << arn of an aws_lb_listener >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: health-check
  namespace: flux-system
spec:
  path: aws_lb_listener_rule
  values:
    action:
    - fixed_response:
      - content_type: text/plain
        message_body: HEALTHY
        status_code: "200"
      type: fixed-response
    condition:
    - query_string:
      - key: health
        value: check
      - value: bar
    listener_arn: << arn of an aws_lb_listener >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: host-based-routing
  namespace: flux-system
spec:
  path: aws_lb_listener_rule
  values:
    action:
    - forward:
      - stickiness:
        - duration: 600
          enabled: true
        target_group:
        - arn: << arn of an aws_lb_target_group >>
          weight: 80
        - arn: << arn of an aws_lb_target_group >>
          weight: 20
      type: forward
    condition:
    - host_header:
      - values:
        - my-service.*.terraform.io
    listener_arn: << arn of an aws_lb_listener >>
    priority: 99
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: host-based-weighted-routing
  namespace: flux-system
spec:
  path: aws_lb_listener_rule
  values:
    action:
    - target_group_arn: << arn of an aws_lb_target_group >>
      type: forward
    condition:
    - host_header:
      - values:
        - my-service.*.terraform.io
    listener_arn: << arn of an aws_lb_listener >>
    priority: 99
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: oidc
  namespace: flux-system
spec:
  path: aws_lb_listener_rule
  values:
    action:
    - authenticate_oidc:
      - authorization_endpoint: https://example.com/authorization_endpoint
        client_id: client_id
        client_secret: client_secret
        issuer: https://example.com
        token_endpoint: https://example.com/token_endpoint
        user_info_endpoint: https://example.com/user_info_endpoint
      type: authenticate-oidc
    - target_group_arn: << arn of an aws_lb_target_group >>
      type: forward
    listener_arn: << arn of an aws_lb_listener >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: redirect-http-to-https
  namespace: flux-system
spec:
  path: aws_lb_listener_rule
  values:
    action:
    - redirect:
      - port: "443"
        protocol: HTTPS
        status_code: HTTP_301
      type: redirect
    condition:
    - http_header:
      - http_header_name: X-Forwarded-For
        values:
        - 192.168.1.*
    listener_arn: << arn of an aws_lb_listener >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: static
  namespace: flux-system
spec:
  path: aws_lb_listener_rule
  values:
    action:
    - target_group_arn: << arn of an aws_lb_target_group >>
      type: forward
    condition:
    - path_pattern:
      - values:
        - /static/*
    - host_header:
      - values:
        - example.com
    listener_arn: << arn of an aws_lb_listener >>
    priority: 100
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule#argument-reference) for the arguments accepted by the `aws_lb_listener_rule` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule#attributes-reference) for the attributes exported by the `aws_lb_listener_rule` resource.
