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
You can apply it directly with `kubectl`, or copy only the YAML content, save it as a file and add it to a Git repository.

```yaml
cat << EOF | kubectl apply -f -
---
apiVersion: source.toolkit.fluxcd.io/v1beta2
kind: OCIRepository
metadata:
  name: aws-package-v4.33.0
  namespace: flux-system
spec:
  interval: 30s
  url: oci://ghcr.io/tf-controller/aws-primitive-modules
  ref:
    tag: v4.33.0-v1alpha2
EOF
```

## AWS Credentials

~> *CAUTION*: On production clusters, we recommend you use the IRSA approach (IAM Roles for Service Accounts) for authentication. Connecting to AWS with your AWS credentials in a Secret is for the demonstration purpose only.

First, please prepare your credentials in the following format.

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: aws-credentials
  namespace: flux-system
type: Opaque
stringData:
  AWS_ACCESS_KEY_ID: Axxxxxxxxxxxxxxxxxxx
  AWS_SECRET_ACCESS_KEY: qxxxxxxxxxxxxxxxxxxxxxxxxx
  AWS_REGION: us-east-1 # the region you want
```

Then you can tell your Terraform object to use the above credentails by specify it as environment variables.
The environment variables will be passed down to the container of the runner, then to the Terraform binary.

```yaml
spec:
  runnerPodTemplate:
    spec:
      envFrom:
      - secretRef:
          name: aws-credentials
```

Here's a complete example to create an S3 Bucket using the credentials provided.


```yaml
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: aws-s3-bucket
  namespace: flux-system
spec:
  path: aws_s3_bucket
  values:
    bucket: my-tf-controller-test-bucket
    tags:
      Environment: Dev
      Name: My bucket
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvePlan: auto
  interval: 1h0m
  destroyResourcesOnDeletion: true
  runnerPodTemplate:
    spec:
      envFrom:
      - secretRef:
          name: aws-credentials
```
