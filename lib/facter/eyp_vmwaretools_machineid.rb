# vmtoolsd --cmd 'machine.id.get'

result = Facter::Util::Resolution.exec('bash -c \'if [ ! -z "$(whereis vmtoolsd)" ]; then vmtoolsd --cmd \'machine.id.get\'; fi\' 2>/dev/null')

unless result.nil? or result.empty?

  if result.to_s != 'No machine id'
    Facter.add('eyp_vmwaretools_machineid') do
        setcode do
          result.to_s
        end
    end
  end

end
