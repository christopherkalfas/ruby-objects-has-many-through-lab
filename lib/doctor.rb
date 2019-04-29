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
        Appointment.new(date, patient, self)   
    end 

    def appointments
        Appointment.all.select{ |appointment| 
        appointment.doctor == self
    } 
    end 

    def patients
    #     self.appointments.map {|appt| 
    #     appt.patient
    # }

    pat_array = []
    self.appointments.each {|appt| 
    pat_array << appt.patient
    }
    pat_array
    end 



end 