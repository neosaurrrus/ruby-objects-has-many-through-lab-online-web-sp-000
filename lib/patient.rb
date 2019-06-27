class Patient

  attr_reader :name, :all

  @@all = []

  def initialize(name)
    @name = name
    @all = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.doctors
    self.appointments.select { |appointment | appointment.doctors == self}
  end

  def new_appointment(doctor, date)
    new_Appointment = Appointment.new(date, self, doctor)
    @all << new_Appointment
  end

  def appointments
    @all
  end

  def doctors
    patient_appointments = appointments.select { |appointment| appointment.patient == self}
    patient_appointments.map { |appointment| appointment.doctors }
  end


end
