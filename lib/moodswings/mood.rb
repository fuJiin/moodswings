class Moodswings

  class Mood

    attr_reader :filepath

    def self.open(name)
      new File.expand_path("#{Storage::DB_PATH}/#{name}.mood")
    end

    def initialize(filepath)
      @filepath = filepath
    end

    def name
      File.basename(@filepath)
    end

    def file
      @file ||= File.open File.expand_path(@filepath)
    end

    def contents
      @contents ||= file.read
    end

    def load
      self.instance_eval(contents)
    end
  end
end