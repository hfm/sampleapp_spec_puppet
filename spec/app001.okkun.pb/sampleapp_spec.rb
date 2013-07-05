require 'spec_helper'

describe file('/var/www/rails') do
  it { should be_directory }
end

describe file('/var/www/rails/current/Gemfile') do
  it { should contain('rspec').from(/^group :development, :test do/).to(/^end/) }
  it { should contain 'unicorn' }
  it { should contain 'mysql2' }
end

describe "adaptor" do
  describe file('/var/www/rails/current/config/database.yml') do
    it { should contain('mysql2').after(/^production:/) }
  end
end

describe file('/var/www/rails/current/config/deploy.rb') do
  it { should be_file }
end

describe "unicorn" do
  describe service('unicorn_worker') do
    it { should be_monitored_by('monit') }
  end

  describe file('/var/www/rails/current/config/unicorn.rb') do
    it { should be_file }
  end

  describe file('/var/www/rails/current/run/unicorn.sock') do
    it { should be_socket }
  end
end
