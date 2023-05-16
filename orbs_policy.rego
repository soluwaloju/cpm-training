package org

  import future.keywords
  import data.circleci.config

  policy_name["allowed_orbs"]

  use_allowed_orbs[orb] = reason {
  some orb, _ in config.orbs
  not startswith(orb, "circleci")
  not startswith(orb, "springhealth")
  reason := sprintf("%s is not an approved orb", [orb])
}

  hard_fail["use_allowed_orbs"]

  enable_rule["use_allowed_orbs"]