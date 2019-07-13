#!/usr/bin/env bats

function setup() {
  export WORKSPACE="${WORKSPACE-"${BATS_TEST_DIRNAME}/.."}"
}

function assert_key_equals {
  key="$1"
  got=$("$WORKSPACE/urlencode" "$key")
  expected=$2

  if [[ "$got" != "$expected" ]]
  then
    echo "Expected \"$got\" to equal \"$expected\""
    return 1
  fi
}

@test "url encode paths and URLs" {
  assert_key_equals "/api/2/studio/cookie/78b" "%2Fapi%2F2%2Fstudio%2Fcookie%2F78b"
  assert_key_equals "javascript://prompt(1)" "javascript%3A%2F%2Fprompt%281%29"
}

@test "url encode JSON strings" {
  assert_key_equals "{\"a\":\"[foo]\",\"b\":\"[bar]\"}" "%7B%22a%22%3A%22%5Bfoo%5D%22%2C%22b%22%3A%22%5Bbar%5D%22%7D"
}
