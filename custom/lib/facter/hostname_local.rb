# node_location.rb

Facter.add("hostname_local") do
  setcode do
   node_location =  Facter::Util::Resolution.exec('/bin/grep 127.0.0.1 /etc/hosts')
  end
end
