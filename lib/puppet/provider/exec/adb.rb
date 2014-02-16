Puppet::Type.type(:exec).provide :adb, :parent => :posix do
  include Puppet::Util::Execution

  defaultfor :operatingsystem => :android

  def run(command, check = false)
    super(['/usr/bin/adb', '-s', Facter.value('clientcert'), 'shell', command], check)
  end

  def validatecmd(command)
    true
  end
end
