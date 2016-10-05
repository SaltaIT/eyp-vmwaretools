Facter.add('eyp_vmwaretools_ver') do
    setcode do
        Facter::Util::Resolution.exec('bash -c \'if [ ! -z "$(whereis vmware-toolbox-cmd)" ]; then vmware-toolbox-cmd -v; fi\' 2>/dev/null')
    end
end
