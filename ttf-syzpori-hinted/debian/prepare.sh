#!/bin/bash

VERSION=1.0.1
GITHUB_URL="https://github.com/peacebringer1/syzpori/"
URL="${GITHUB_URL}/releases/download/v${VERSION}/SyzporiFonts_hinted.zip"
ZIP_NAME="ttf-syzpori-hinted-${VERSION}"

mkdir debian/src
curl -L "$URL" -o debian/src/$ZIP_NAME.zip
unzip -o debian/src/$ZIP_NAME.zip -d debian/src/unzip/