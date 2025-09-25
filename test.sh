#!/usr/bin/env bash

podman build -t pinp-test .
podman run --privileged pinp-test
