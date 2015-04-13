#!/bin/bash
# bash script to remove all git tags locally and remotely
# https://gist.github.com/matthewmccullough/898798
for t in `git tag`
do
    git push origin :$t
    git tag -d $t
done
