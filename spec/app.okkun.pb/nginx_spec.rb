require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/nginx/nginx.conf') do
  it { should be_file }
  it { should contain "user\s*nginx;" }
end

describe file('/etc/nginx/conf.d/proxy.conf') do
  it { should be_file }
  it { should contain "upstream\s*proxy" }
  it { should contain "server_name _" }
end
