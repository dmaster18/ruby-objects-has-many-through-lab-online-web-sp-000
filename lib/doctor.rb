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
  
  def new_appointment(patient, date)
    new_appointment = Appointment.new(date, patient, self)
    new_appointment.doctor = self
    Appointment.all << new_appointment
    new_appointment
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end
  
  def patients
    patients = appointments.map{|appointment| appointment.patient}
    patients
  end
  
end