require 'spec_helper'

describe file('/var/www/rails') do
  it { should be_directory }
end

describe file('/var/www/rails/Gemfile') do
  it { should contain('rspec').from(/^group :development, :test do/).to(/^end/) }
  it { should contain 'unicorn' }
  it { should contain 'mysql2' }
end

describe "adaptor" do
  describe file('/var/www/rails/config/database.yml') do
    it { should contain('mysql2').after(/^production:/) }
  end
end

describe "unicorn" do
  describe file('/var/www/rails/config/unicorn.rb') do
    it { should be_file }
  end

  describe file('/var/www/rails/tmp/sockets/unicorn.sock') do
    it { should be_socket }
  end
end
