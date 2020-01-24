require 'dockingstation'

describe DockingStation do

    subject(:station) {described_class.new}

    it { is_expected.to respond_to(:release_bike) }

    it "should release a working bike" do
        expect(station.release_bike.working?).to eq true  
    end

    it 'should dock a bike' do
        bike = Bike.new 
        station.release_bike
        expect(station.dock(bike)).to eq bike
    end    

    it 'should return the docked bike when a bike is docked' do
        bike = Bike.new
        station.release_bike
        expect(station.dock(bike)).to eq bike 
    end     

    it 'should return error when asked for a bike when there is no bike' do 
      # first do release bike so that available bikes goes to 0
      station.release_bike
      expect {station.release_bike}.to raise_error("No bikes available")
    end    

    it 'should reject docking if theres already a bike in the dock' do
      bike = Bike.new
      expect {station.dock(bike)}.to raise_error("Cant dock. Station is full")
    end
end


