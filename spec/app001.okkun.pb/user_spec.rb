require 'spec_helper'

describe user('okkun') do
  it { should exist }
  it { should belong_to_group 'appuser' }
  it { should have_uid 1000 }
  it { should have_home_directory '/home/okkun' }
  it { should have_login_shell '/bin/bash' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVgeqfGUE9WmZAY18j+ju1ngsVcNWMkdVagNGBEWwz+9q4iYMo1eywECdKILG4zYwDVok2eLwT6mhvwe/xT/5NRRCM+kuI6hOk9PFBKvO9ttNT9Rv4Nkdh1MNeZQT4vbcz1f+0aX0mkT7l41vI8XnLp2tvgN4NHVQaj1by8hu3+xZeFQrOKTSQJ7Md3ZtwLJxjYridlzq9+xK2Vt6FRlywm0d4BxSN340L/+4F9Q2zu8KRhWNU5Ir1GG+Mttflb6LEdQLKEbo23QiMVrA3jBmGBUwxjLoVjeqS8ZQ2z1Fkb5dzSEOHgBThDHoCJNfbb0LQ8anFBykIuETZBn1hU7od o302@ppb-okkin.local' }
end

describe group('appuser') do
  it { should exist }
  it { should have_gid 1000 }
end
