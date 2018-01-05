#!/bin/bash
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements. See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership. The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License. You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.
#

#
# The build has two stages: "docker" and "test"
# The "docker" stage is meant to rebuild the docker images
#   if needed.  If we cannot push that result however then
#   there is no reason to do anything.
# The "test" stage is an actual test job.  Even if the docker
#   image doesn't match what's in the repo, we still build
#   the image so the build job can run properly.
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCKER_TAG=$DOCKER_REPO:$DISTRO

#
# Dockerfile has changed - rebuild it for the current build job.
# If it is a "docker" stage build then we want to push it back
# to the DOCKER_REPO.  If it is a "test" stage build then we do
# not.  If nobody defined a DOCKER_PASS then it doesn't matter.
#

echo Rebuilding docker image $DISTRO
docker build --tag $DOCKER_TAG build/docker/$DISTRO
