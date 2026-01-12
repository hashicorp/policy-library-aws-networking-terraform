# Copyright IBM Corp. 2022, 2025
# SPDX-License-Identifier: MPL-2.0

policy "deny-public-ssh-acl-rules" {
  source = "./policies/deny-public-ssh-acl-rules/deny-public-ssh-acl-rules.sentinel"
}
policy "deny-public-rdp-acl-rules" {
  source = "./policies/deny-public-rdp-acl-rules/deny-public-rdp-acl-rules.sentinel"
}
policy "restrict-all-vpc-traffic-acl-rules" {
  source = "./policies/restrict-all-vpc-traffic-acl-rules/restrict-all-vpc-traffic-acl-rules.sentinel"
}