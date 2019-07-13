#!/usr/bin/env bats

function setup() {
  export WORKSPACE="${WORKSPACE-"${BATS_TEST_DIRNAME}/.."}"
}

function assert_key_equals {
  key="$1"
  got=$("$WORKSPACE/urldecode" "$key")
  expected=$2

  if [[ "$got" != "$expected" ]]
  then
    echo "Expected \"$got\" to equal \"$expected\""
    return 1
  fi
}

@test "url decode paths and URLs" {
  assert_key_equals "%2Fapi%2F2%2Fstudio%2Fcookie%2F78b" "/api/2/studio/cookie/78b"
  assert_key_equals "url=https%3A%2F%2Fwww.example.nl%2F" "url=https://www.example.nl/"
}

@test "url decode JSON strings" {
  assert_key_equals "%7B%22a%22%3A%22%5Bfoo%5D%22%2C%22b%22%3A%22%5Bbar%5D%22%7D" "{\"a\":\"[foo]\",\"b\":\"[bar]\"}"
}
