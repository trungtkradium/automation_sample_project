#!/bin/bash

set -e
git config --global url."https://${{ secrets.GITHUB_TOKEN }}:x-oauth-basic@github.com/".insteadOf git@github.com:
git config --global url."https://".insteadOf git://
