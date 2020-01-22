require_relative 'bike'

class DockingStation

    attr_reader :bike

    def release_bike
        released = Bike.new
        return released
    end

    def dock(bike)
        @bike = bike 
        return bike
    end     


end