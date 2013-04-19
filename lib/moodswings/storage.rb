class Moodswings

  class Storage

    DB_PATH = "~/.moodswings"

    def list
      puts ""
      moods.each do |mood|
        puts mood.name
      end
      puts ""
    end

    def moods
      @moods ||= mood_paths.reject do |path|

      end.map do |path|
        Mood.new(path)
      end
    end

    def mood_paths
      Dir[File.expand_path(DB_PATH + "/*.mood")]
    end
  end
end