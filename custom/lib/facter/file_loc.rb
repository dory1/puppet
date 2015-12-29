# node_location.rb

Facter.add("node_location") do
  setcode do
   node_location =  Facter::Util::Resolution.exec('/bin/cut -d";" -f1 /var/HPMon/MonHostDetails.TXT')
  end
end
