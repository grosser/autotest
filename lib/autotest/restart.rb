module Autotest::Restart
  Autotest.add_hook :updated do |at, files_updated|
    if files_updated.keys.include? ".autotest" then
      warn "Detected change to .autotest, restarting"
      cmd = %w(autotest)
      cmd << " -v" if $v
      cmd += ARGV

      exec(*cmd)
    end
  end
end
