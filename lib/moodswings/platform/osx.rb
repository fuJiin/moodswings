class Moodswings

  module Platform

    module OSX

      def desktop_background(filepath)
        path = File.expand_path(filepath)
        system(
          "osascript " \
          "-e \'tell application \"Finder\"\' " \
          "-e \'set the desktop picture to POSIX file \"#{path}\"\' " \
          "-e \'end tell \'"
        )
      end

      def open_app(app_name)
        system(
          "osascript " \
          "-e \'tell application \"#{app_name}\"\' " \
          "-e \'activate\' " \
          "-e \'end tell\'"
        )
      end

      def close_app(app_name)
        system(
          "osascript " \
          "-e \'tell application \"#{app_name}\"\' " \
          "-e \'quit\' " \
          "-e \'end tell\'"
        )
      end
    end
  end
end