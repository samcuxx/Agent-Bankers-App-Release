#!/usr/bin/env bash
# Helper script to prepare and tag a new release for Agent Bankers App
set -e

VERSION="$1"
if [ -z "$VERSION" ]; then
  echo "Usage: ./scripts/publish-release.sh <version> (e.g. 2.4.0)"
  exit 1
fi

TAG="v${VERSION#v}"
echo "==> Preparing release tag: ${TAG}"

git tag -a "${TAG}" -m "Release ${TAG}"
echo "==> Pushing tag ${TAG} to GitHub..."
git push origin "${TAG}"

echo "==> Tag pushed successfully!"
echo "Now visit: https://github.com/samcuxx/Agent-Bankers-App-Release/releases/new?tag=${TAG}"
echo "Upload your built APK (ABAG-${TAG}.apk) and publish the release."
