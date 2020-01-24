require_relative 'bike'

class DockingStation

    attr_reader :bike, :available_bikes

    def initialize
      @available_bikes = 1
    end

    def release_bike
      if @available_bikes == 0
        raise "No bikes available"
      else 
        bike = Bike.new 
        @available_bikes -= 1
        return bike 
     end
    end

    def dock(bike) 
      if @available_bikes == 1
        raise "Cant dock. Station is full"
      else
        @bike = bike
      end
    end     




end