
class Moodswings

  def self.lib_path
    File.expand_path(__FILE__ + "/..")
  end

  autoload :Mood,     "#{lib_path}/moodswings/mood"
  autoload :Storage,  "#{lib_path}/moodswings/storage"

  module Platform
    autoload :OSX,   "#{Moodswings.lib_path}/moodswings/platform/osx"
  end
end

# Load OS specific helpers
#
case RbConfig::CONFIG["host_os"]
when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
  # Windows
when /darwin|mac os/
  Moodswings::Mood.send(:include, Moodswings::Platform::OSX)
when /linux/
  # Linux
when /solaris|bsd/
  # Unix
end
