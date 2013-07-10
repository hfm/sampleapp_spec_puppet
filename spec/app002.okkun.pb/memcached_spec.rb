require 'spec_helper'

describe host('app001.app.pb') do
  it { should be_resolvable }
  it { should be_reachable.with( :port => 11211, :proto => 'tcp' ) }
end
