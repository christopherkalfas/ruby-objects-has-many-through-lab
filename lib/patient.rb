class Patient
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end 

    def initialize(name)
        @name = name
        @@all << self
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end 

    def appointments
        Appointment.all.select do |appt|
             self == appt.patient 
        end

    end 

    def doctors
        self.appointments.map {|appointment| appointment.doctor}
    end 



end 