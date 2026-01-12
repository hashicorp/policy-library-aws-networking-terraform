# Copyright IBM Corp. 2022, 2025
# SPDX-License-Identifier: MPL-2.0

mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
