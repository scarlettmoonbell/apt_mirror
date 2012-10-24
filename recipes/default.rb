#
# Cookbook Name:: apt-mirror
# Recipe:: default
#
# Copyright 2012, Joshua Bell
#
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

package "apt-mirror" do
  action :install
end

directory "/etc/apt/mirror.list.d" do
  mode 0755
  owner "root"
  group "root"
  action :create
end

# Example to be moved to documentation after testing
apt-mirror_mirror "opscode_lucid_10" do
  action :create
  type "deb"
  url "http://apt.opscode.com/"
  distribution "lucid-0.10"
  components [ "main" ]
  clean "http://apt.opscode.com/"
  schedule "????"
  docroot "/var/www/repos/chef"
end
