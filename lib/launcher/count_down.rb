module Launcher
  class CountDown
    raw_config = File.read(RAILS_ROOT + "/config/launcher.yml")
    CONFIG = YAML.load(raw_config)[RAILS_ENV].symbolize_keys

    def self.launching_date
      @launching_date ||= Time.parse(CONFIG[:launching_date])
    end
    
    def to_sentence
      days = distance_in_seconds / one_day
      hours = (distance_in_seconds - days * one_day) / one_hour
      minutes =  (distance_in_seconds - days * one_day- hours * one_hour) / one_minute
      seconds = distance_in_seconds - days * one_day - hours * one_hour - minutes * one_minute

      "Lanseras om #{days} dagar #{hours} timmar #{minutes} minuter och #{seconds} sekunder"      
    end
    
    private
    
    def one_minute
      @one_minute ||= 60
    end
    
    def one_hour
      @one_hour ||= 60 * 60
    end
    
    def one_day
      @one_day ||= 60 * 60 * 24
    end
    
    def distance_in_seconds
      distance_in_seconds = ((self.class.launching_date - Time.now).abs).round
    end
    
  end
end
