# Ensure no security groups allow ingress from 0.0.0.0/0 to port 22

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## Description
Removing unfettered connectivity to remote console services, such as SSH, reduces a server's exposure to risk.

## Policy Results (Pass)
```bash
trace:
      deny-public-ssh-acl-rules.sentinel:85:1 - Rule "main"
        Description:
          --------------------------------------------------------
          Name:        deny-public-ssh-acl-rules.sentinel
          Category:    Networking
          Provider:    hashicorp/aws
          Resource:    aws_security_group
                       aws_security_group_rule
          Check:       cidr_blocks does not contain "0.0.0.0/0"
                       when port is "22" or protocl is "-1"
          --------------------------------------------------------
          Ensure no security groups allow ingress from 0.0.0.0/0
          to port 3389.
          --------------------------------------------------------

        Value:
          true
```

---