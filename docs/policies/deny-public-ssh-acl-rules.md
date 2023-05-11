# Ensure no security groups allow ingress from 0.0.0.0/0 to port 22

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## Description
Removing unfettered connectivity to remote console services, such as SSH, reduces a server's exposure to risk.

## Policy Results (Pass)
```bash
trace:
      deny-public-ssh-acl-rules.sentinel:72:1 - Rule "main"
        Description:
          Ensure no security groups allow ingress from 0.0.0.0/0 to port
          22.

        Value:
          false

      deny-public-ssh-acl-rules.sentinel:43:1 - Rule "deny_public_ssh_security_groups"
        Value:
          false
```

---
