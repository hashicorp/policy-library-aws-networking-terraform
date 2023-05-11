# Ensure the default security group of every VPC restricts all traffic

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## Description
Configuring all VPC default security groups to restrict all traffic will encourage least privilege security group development and mindful placement of AWS resources into security groups which will in-turn reduce the exposure of those resources.

## Policy Results (Pass)
```bash
    trace:
      restrict-all-vpc-traffic-acl-rules.sentinel:35:1 - Rule "main"
        Description:
          Ensure the default security group of every VPC restricts all
          traffic

        Value:
          false

      restrict-all-vpc-traffic-acl-rules.sentinel:16:1 - Rule "deny_all_vpc_inbound_acls"
        Value:
          false

      restrict-all-vpc-traffic-acl-rules.sentinel:22:1 - Rule "deny_undefined_egress_configuration"
        Value:
          true

      restrict-all-vpc-traffic-acl-rules.sentinel:10:1 - Rule "deny_undefined_ingress_configuration"
        Value:
          true
```