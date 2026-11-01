#!/usr/bin/env bash
# Linux libraries Bevy's windowing and audio crates link against. The retired dev-base
# image carried them, and the hosted runner image does not.
set -euo pipefail

sudo apt-get update -qq
sudo apt-get install -y --no-install-recommends \
  pkg-config libwayland-dev libxkbcommon-dev libx11-dev libasound2-dev libudev-dev
