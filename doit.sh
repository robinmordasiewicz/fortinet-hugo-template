#!/bin/bash
#

RELEASE_API_URL="https://api.github.com/repos/McShelby/hugo-theme-relearn/releases/latest"
TARBALL_URL=$(curl --silent "$RELEASE_API_URL" | jq --raw-output '.tarball_url')
TAG_NAME=$(curl --silent "$RELEASE_API_URL" | jq --raw-output '.tag_name')

curl -L -o hugo-theme-relearn-${TAG_NAME}.tar.gz ${TARBALL_URL}

mkdir -p themes/hugo-theme-relearn/

tar -zxvf hugo-theme-relearn-${TAG_NAME}.tar.gz -C themes/hugo-theme-relearn/ --strip-components 1

RELEASE_API_URL="https://api.github.com/repos/robinmordasiewicz/fortinet-hugo-theme/releases/latest"
TARBALL_URL=$(curl --silent "$RELEASE_API_URL" | jq --raw-output '.tarball_url')
TAG_NAME=$(curl --silent "$RELEASE_API_URL" | jq --raw-output '.tag_name')

curl -L -o fortinet-hugo-theme-${TAG_NAME}.tar.gz ${TARBALL_URL}

tar -zxvf fortinet-hugo-theme-${TAG_NAME}.tar.gz -C ./ --strip-components 1

