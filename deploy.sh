#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

git clone --branch 'mochajs.org' https://github.com/mochajs/mocha.git
cd mocha
npm ci
npm install ..
npm start docs
