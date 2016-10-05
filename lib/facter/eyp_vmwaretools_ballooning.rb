Facter.add('eyp_vmwaretools_ballooning') do
    setcode do
        Facter::Util::Resolution.exec('bash -c \'if [ ! -z "$(whereis vmware-toolbox-cmd)" ]; then vmware-toolbox-cmd stat balloon; fi\' 2>/dev/null')
    end
end
