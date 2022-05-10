#!/bin/sh

set -exu
clang-tidy-12 $(find srcs -type f) -- -I./srcs