# AWS region where should the AWS Kubernetes be deployed
aws_region    = "eu-central-1"

# Name for role, policy and cloud formation stack
cluster_name  = "aws-kubernetes"

# Instance type
aws_instance_type = "t2.medium"

# SSH key for the machines
ssh_public_key = "~/.ssh/id_rsa.pub"

# Subnet ID where the cluster should run
aws_subnet_id = "subnet-8a3517f8"

# DNS zone where the domain is placed
hosted_zone = "my-domain.com"
hosted_zone_private = false

# Tags
tags = {
  Application = "AWS-Kubernetes"
}

# Kubernetes Addons
# Supported addons:
# https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/storage-class.yaml
# https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/heapster.yaml
# https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/dashboard.yaml
# https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/route53-mapper.yaml
# https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/external-dns.yaml
# https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/ingress.yaml"

addons = [
  "https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/storage-class.yaml",
  "https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/heapster.yaml",
  "https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/dashboard.yaml",
  "https://s3.amazonaws.com/scholzj-kubernetes/cluster/addons/external-dns.yaml"
]
