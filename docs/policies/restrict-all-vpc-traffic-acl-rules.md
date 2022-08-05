# Ensure the default security group of every VPC restricts all traffic

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## Description
Configuring all VPC default security groups to restrict all traffic will encourage least privilege security group development and mindful placement of AWS resources into security groups which will in-turn reduce the exposure of those resources.

## Policy Results (Pass)
```bash
trace:
      restrict-all-vpc-traffic-acl-rules.sentinel:47:1 - Rule "main"
        Description:
          --------------------------------------------------------
          Name:        restrict-all-vpc-traffic-acl-rules.sentinel
          Category:    Networking
          Provider:    hashicorp/aws
          Resource:    aws_default_network_acl
          Check:       egress block is empty
                       ingress block is empty
          --------------------------------------------------------
          Ensure the default security group of every VPC restricts
          all traffic
          --------------------------------------------------------

        Value:
          true
```