require 'serverspec'
require 'pathname'
require 'net/ssh'
require 'highline/import'

include Serverspec::Helper::Ssh
include Serverspec::Helper::RedHat

RSpec.configure do |c|
  c.sudo_password = ask("Enter sudo password: ") { |q| q.echo = false }
  c.before :all do
    block = self.class.metadata[:example_group_block]
    file = block.source_location.first
    host  = File.basename(Pathname.new(file).dirname)
    if c.host != host
      c.ssh.close if c.ssh
      c.host  = host
      options = Net::SSH::Config.for(c.host)
      user = ask("\nEnter login user: ") { |q| q.echo = false }
      options[:password] = ask("\nEnter login password: ") { |q| q.echo = false }
      c.ssh   = Net::SSH.start(c.host, user, options)
    end
  end
end
