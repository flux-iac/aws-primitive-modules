
# Primitive Module: aws_ec2_traffic_mirror_target

This is the Weave TF-controller primitive module for resource `aws_ec2_traffic_mirror_target`.

## Description

Provides a Traffic mirror target.  
Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: eni
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_target
  values:
    description: ENI target
    network_interface_id: << primary_network_interface_id of an aws_instance >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: gwlb
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_target
  values:
    description: GWLB target
    gateway_load_balancer_endpoint_id: << id of an aws_vpc_endpoint >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: nlb
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_target
  values:
    description: NLB target
    network_load_balancer_arn: << arn of an aws_lb >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
