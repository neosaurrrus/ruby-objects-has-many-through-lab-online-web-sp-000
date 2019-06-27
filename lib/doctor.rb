class Doctor

  attr_reader :name, :all

  @@all = []


  def initialize(name)
    @name = name
    @all= []
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def self.all
    @@all
  end
   def appointments
     @all
   end

   def patients
     doctor_appointments = appointments.select { |appointment| appointment.doctor == self}
     doctor_appointments.map { |appointment| appointment.patient }
   end

end
