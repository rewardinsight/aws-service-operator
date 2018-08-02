#!/bin/bash -e

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
projectdir="$(pwd | sed "s#$GOPATH\/src\/##g")"
cd ${scriptdir}/vendor/k8s.io/code-generator && ./generate-groups.sh \
  all \
  ${projectdir}/pkg/client \
  ${projectdir}/pkg/apis \
  "operator.aws:v1alpha1" \