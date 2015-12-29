# node_location.rb

Facter.add("node_env") do
  setcode do
   node_env =  Facter::Util::Resolution.exec('/bin/cut -d";" -f2 /var/HPMon/MonHostDetails.TXT')
  end
end
