require 'pry'
require 'time'

class Event
    attr_accessor :start_date #, :duration, :title, :attendees

    def initialize (start_date_to_save)
        @start_date = Time.parse(start_date_to_save)
        # .strftime("%H:%M:%S %d/%m/%Y") pour le passer en format européen
    end

    binding.pry
end