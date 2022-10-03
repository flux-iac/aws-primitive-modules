
# Primitive Module: aws_ec2_traffic_mirror_session

This is the Weave TF-controller primitive module for resource `aws_ec2_traffic_mirror_session`.

## Description

Provides an Traffic mirror session.  
Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: session
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_session
  values:
    description: traffic mirror session - terraform example
    network_interface_id: << primary_network_interface_id of an aws_instance >>
    session_number: 1
    traffic_mirror_filter_id: << id of an aws_ec2_traffic_mirror_filter >>
    traffic_mirror_target_id: << id of an aws_ec2_traffic_mirror_target >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```
