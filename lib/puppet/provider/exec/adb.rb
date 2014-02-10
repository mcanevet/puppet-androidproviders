Puppet::Type.type(:exec).provide :adb, :parent => :posix do
  include Puppet::Util::Execution

  def run(command, check = false)
    super(['/usr/bin/adb', 'shell', command], check)
  end

  def validatecmd(command)
    true
  end
end
