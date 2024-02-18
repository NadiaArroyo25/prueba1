class AgendaController < ApplicationController
    def agenda
        @appointments = Appointment.all  
    end
end

