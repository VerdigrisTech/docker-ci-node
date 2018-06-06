# docker-ci-node

[![Build Status](https://img.shields.io/circleci/token/f41a8ea8d8fe8a47d6d409f60f53230c8c21ff67/project/VerdigrisTech/docker-ci-node.svg)](https://circleci.com/gh/VerdigrisTech/workflows/docker-ci-node)
[![Report Issues](https://img.shields.io/badge/issues-pivotal%20tracker-0fc8c3.svg)](https://www.pivotaltracker.com/n/projects/2072645)
[![Join Chat on Slack](https://img.shields.io/badge/slack-%23team--insights-0fc8c3.svg)](https://verdigris.slack.com/messages/team-product0_jacob)

Base image for running Docker CLI and Heroku CLI commands on
[CircleCI](https://circleci.com).

## Usage

Use this image as a primary container for deploying to Heroku on
[CircleCI](https://circleci.com):

```yaml
version: 2
jobs:
  test:
    docker:
      - image: verdigristech/ci-node

# Rest of the config.yml for your project
# ...
```

---

Copyright © 2018 Verdigris Technologies Inc. All rights reserved.
