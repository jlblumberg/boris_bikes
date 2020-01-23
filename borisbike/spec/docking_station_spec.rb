require 'dockingstation'

describe DockingStation do

    subject(:station) {described_class.new}

    it { is_expected.to respond_to(:release_bike) }

    it "should release a working bike" do
        expect(station.release_bike.working?).to eq true  
    end

    it 'should dock a bike' do
        bike = Bike.new 
        expect(station.dock(bike)).to eq bike
    end    

    it 'should return the docked bike when asked' do
        bike = Bike.new
        station.dock(bike) 
        expect(station.bike).to eq bike 
    end     

    it 'should return error when asked for a bike when there is no bike' do 
        expect {station.release_bike}.to raise_error("message")
    end    

end


