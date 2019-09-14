class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, patient, self)
    Appointment.all << new_appointment
  end

  def appointments
    new_appointment(date, patient)
    Appointment.all.select{|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.collect{|appointment| appointment.patient}
  end
  
end