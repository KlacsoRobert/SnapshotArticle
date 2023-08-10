#!/usr/bin/env bash

# Change the sources of this script according to your file structure
# After the first run you need to copy the output swift file into the project
Pods/Sourcery/bin/sourcery --sources ../SnapshotArticle --templates PreviewProvider.stencil --output SnapshotArticleTests/SnapshotTest.swift
