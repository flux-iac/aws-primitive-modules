# AWS primitive modules for Weave GitOps Terraform Controller

This repository contain primitive modules generated from each resource 
of the Terraform AWS Provider. All primitive modules are bundled and delivered
in the form of OCI image via the Flux's OCIRepository mechanism.

Currently, this repository contains resources prefixed by:

  - `aws_acm`
  - `aws_ami`
  - `aws_app`
  - `aws_docdb`
  - `aws_ec2`
  - `aws_ecr`
  - `aws_ecs`
  - `aws_eks`
  - `aws_elb`
  - `aws_iam`
  - `aws_instance`
  - `aws_lb`
  - `aws_load`
  - `aws_prometheus`
  - `aws_proxy`
  - `aws_s3`

## Requirements

  - Flux v0.34.x
  - Weave TF-controller v0.13.x
  - Terraform v1.3.x

## Installation

Please apply the following YAML to install this package.
You can apply it directly with `kubectl`, or copy only the YAML content
as a file and add it to a Git repository.

```
cat << EOF | kubectl apply -f -
---
apiVersion: source.toolkit.fluxcd.io/v1beta2
kind: OCIRepository
metadata:
  name: aws-package-v4.33.0
  namespace: flux-system
spec:
  interval: 30s
  url: ghcr.io/tf-controller/aws-primitive-modules
  ref:
    tag: v4.33.0-v1alpha2
EOF
```
