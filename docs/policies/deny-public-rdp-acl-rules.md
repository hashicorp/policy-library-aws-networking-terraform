# Ensure no security groups allow ingress from 0.0.0.0/0 to port 3389

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Networking |

## Description
Removing unfettered connectivity to remote console services, such as RDP, reduces a server's exposure to risk.

## Policy Results (Pass)
```bash
trace:
      deny-public-rdp-acl-rules.sentinel:72:1 - Rule "main"
        Description:
          Ensure no security groups allow ingress from 0.0.0.0/0 to port
          3389.

        Value:
          false

      deny-public-rdp-acl-rules.sentinel:43:1 - Rule "deny_public_rdp_security_groups"
        Value:
          false
```

---