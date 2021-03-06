# Shell scripts

![](https://github.com/koenrh/shell-scripts/workflows/build/badge.svg)

This repository contains a bunch of random shell scripts I have written that others
may find useful.

## Installation

If you're on macOS or Linux, the most straightforward way to install any of these
scripts is using [Homebrew](https://brew.sh/) and [Linuxbrew](http://linuxbrew.sh/)
respectively, and the [koenrh/tools](https://github.com/koenrh/homebrew-tools)
"tap".

```bash
brew tap koenrh/tools

# Example: install 'asroutes' script
brew install asroutes
```

## Scripts

### asroutes

Get a list of all announced prefixes for a given autonomous system number (ASN).

### cleanup-wireless-networks

Remove the associations for all wireless networks. Optionally, specify a list of
wireless networks to preserve.

### getrdslogs

Download all logs for a given Amazon RDS instance.

### github-archive-repository

Archive public and private GitHub repositories, including source code, issues,
pull requests, and wiki pages.

### github-bundle-audit

Audit Ruby Gemfiles in all repositories in a GitHub organisation.

### purl

Get basic request and response timing information.

### s3check

Check the public permissions of an Amazon S3 bucket.

### ungem

Unpack a Ruby gem.

### urldecode

Decode URL-encoded strings.

### urlencode

URL-encode strings.
