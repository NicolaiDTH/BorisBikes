require "station"

describe Station do

	it "should accept a bike" do
		bike = Bike.new
		station = Station.new
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end
end