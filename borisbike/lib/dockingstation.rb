require_relative 'bike'

class DockingStation

    attr_reader :bike

    available_bikes = 1

    def release_bike
      released = Bike.new
      available_bikes = available_bikes - 1 
      if available_bikes < 1
    raise "message"
      else 
        return released 

      end
    
    end


    def dock(bike)
        @bike = bike 
    end     




end