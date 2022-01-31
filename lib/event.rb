require 'time'

class Event
    attr_accessor :start_date , :duration , :title , :attendees

    def initialize(start_date_to_save,duration_to_save,title_to_save,attendees_to_save)
        @start_date = Time.parse(start_date_to_save)
        @duration = duration_to_save
        @title = title_to_save
        @attendees = attendees_to_save
    end

    def postpone_24h
        @start_date += 60*60*24
    end

    def end_date
        @end_date = @start_date + @duration
    end

    def is_past?
        return @start_date < Time.now
    end

    def is_future?
        !self.is_past?
    end

    def is_soon
        return @start_date < Time.now + 30*60
    end

    def to_s
        puts "> Titre : #{@title}"
        puts "> Date de début: #{@start_date}"
        puts "> Durée : #{@duration} minutes"
        print "> Invités : "
        puts @attendees.join(',')
    end
end