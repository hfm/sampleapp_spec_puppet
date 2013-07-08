require 'spec_helper'

describe host('db001.okkun.pb') do
  it { should be_resolvable }
  it { should be_reachable }
  it { should be_reachable.with( :port => 22, :proto => 'tcp') }
end
