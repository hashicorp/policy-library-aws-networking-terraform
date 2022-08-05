# Ensure no security groups allow ingress from 0.0.0.0/0 to port 3389

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## Description
Removing unfettered connectivity to remote console services, such as RDP, reduces a server's exposure to risk.

## Policy Results (Pass)
```bash
trace:
      deny-public-rdp-acl-rules.sentinel:85:1 - Rule "main"
        Description:
          --------------------------------------------------------
          Name:        deny-public-rdp-acl-rules.sentinel
          Category:    Networking
          Provider:    hashicorp/aws
          Resource:    aws_security_group
                       aws_security_group_rule
          Check:       cidr_blocks does not contain "0.0.0.0/0"
                       when port is "3389" or protocl is "-1"
          --------------------------------------------------------
          Ensure no security groups allow ingress from 0.0.0.0/0
          to port 3389.
          --------------------------------------------------------

        Value:
          true
```

---