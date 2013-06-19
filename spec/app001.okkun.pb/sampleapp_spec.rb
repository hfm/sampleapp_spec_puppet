require 'spec_helper'

describe file('/var/www/sample_app') do
  it { should be_directory }
end

describe "unicorn" do
  describe file('/var/www/sample_app/config/unicorn.rb') do
    it { should be_file }
  end
end
