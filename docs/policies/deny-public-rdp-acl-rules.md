# Ensure no security groups allow ingress from 0.0.0.0/0 to port 3389

provider | category
--- | ---
aws | networking

## Description
Removing unfettered connectivity to remote console services, such as RDP, reduces a server's exposure to risk.
