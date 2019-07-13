workflow "Run tests" {
  on = "push"
  resolves = ["shellcheck", "bats"]
}

action "shellcheck" {
  uses = "actions/bin/shellcheck@master"
  args = [
    "asroutes",
    "cleanup-wireless-networks",
    "github-archive-repository",
    "github-bundle-audit",
    "purl",
    "s3check",
    "ungem",
    "urlencode",
    "urldecode"
  ]
}

action "bats" {
  uses = "actions/bin/bats@master"
  args = "./test/*.bats"
}
