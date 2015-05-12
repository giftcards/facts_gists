Facter.add(:authorized_keys_files) do
  setcode do
    authorized_keyfiles = Array.new
    authorized_keyfiles += Dir.glob('/home/*/.ssh/authorized_keys')
    authorized_keyfiles += Dir.glob('/root/.ssh/authorized_keys')
    authorized_keyfiles = 'nil' if authorized_keyfiles == Array.new
    authorized_keyfiles
  end
end
