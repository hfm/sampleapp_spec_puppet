require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/nginx/nginx.conf') do
  it { should be_file }
  it { should contain "user\s*okkun\s*appuser" }
end

describe file('/etc/nginx/conf.d/rails.conf') do
  it { should be_file }
  it { should contain "upstream\s*backend" }
  it { should contain "server_name app001.okkun.pb" }
end
