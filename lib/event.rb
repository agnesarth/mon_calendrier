require 'pry'
require 'time'

class Event
    attr_accessor :start_date #, :duration, :title, :attendees

    def initialize (start_date_to_save)#, duration_to_save, title_to_save)
        @start_date = Time.parse(start_date_to_save)
        # .strftime("%H:%M:%S %d/%m/%Y") pour le passer en format européen
        #@duration = duration_to_save.to_i
        #@title = title_to_save
    end

    binding.pry
end