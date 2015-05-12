Facter.add(:mtab) do
  setcode do
    mtab_contents = File.readlines('/etc/mtab')
    mtab_contents.collect { |x|
      x.delete!("\n")
      x.gsub! /\s+/, ' '
    }
    mtab_contents
  end
end
