class Patient
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    new_appointment = Appointment.new(date, self, doctor)
    new_appointment.patient = self
    Appointment.all << new_appointment
    new_appointment
  end

  def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.map{|appointment| appointment.doctor}
  end
  

end