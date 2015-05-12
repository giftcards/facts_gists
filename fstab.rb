Facter.add(:fstab) do
  setcode do
    fstab_contents = File.readlines('/etc/fstab')
    fstab_contents.collect { |x|
      x.delete!("\n")
      x.gsub! /\s+/, ' '
    }
    fstab_contents
  end
end
