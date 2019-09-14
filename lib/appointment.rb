class Appointment
  attr_accessor :date, :patient, :doctor 
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self    
  end
  
  def self.all
    new_appointment(date, patient)
    new_appointment(date, patient)
    @@all
  end
end

