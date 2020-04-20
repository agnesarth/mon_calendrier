require "pry"
require "time"

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  @@all_emails = []

  def initialize(start_date_to_save, duration_to_save, title_to_save, email_to_save)
    @start_date = Time.parse(start_date_to_save) 
    # Format YY-MM-DD HH:mm à ajouter manuellement

    @duration = duration_to_save.to_i 
    @title = title_to_save
    @attendees = email_to_save
    @attendees.each do |e|
      @@all_emails << e
    end
  end

  def self.all
    return @@all_emails
  end

  def postpone_24h
    return self.start_date = start_date + 24*60*60
  end

  def end_date
    return self.start_date + @duration * 60
  end


  def is_past?
    return self.start_date < Time.now 
  end

  def is_future? 
    return !self.is_past?
  end

  def is_soon?
    start_soon = self.start_date - Time.now
    return start_soon <= 30*60 && start_soon >= 0
  end

  def to_s
    print ">Titre : "
    puts self.title
    print ">Date de début : "
    puts self.start_date
    print ">Durée : "
    puts "#{self.duration} minutes"
    print "Invités : "
    puts attendees.join(", ").to_s
  end


binding.pry
puts "fin de la méthode"
end # fin de la classe Event