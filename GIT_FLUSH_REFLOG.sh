#!/bin/bash
git fsck --unreachable --no-reflogs
git reflog expire --expire=now --all
git gc --prune=now
