require "./lib/bike_container"

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
		expect(holder.bike_count).to eq 0
		holder.dock(bike)
		expect(holder.bike_count).to eq 1
	end

	it "should know that the station is empty" do
		expect(holder.empty?).to eq true
	end

	it "should know if a bike is there or not" do
		holder.empty?
		expect{holder.release(bike)}.to raise_error("The station is empty.")
	end
end

# describe BikeContainer do
# 	let(:bike) {Bike.new}
# 	let(:station) {Station.new(:capacity => 20)}

# 	it "should accept a bike" do
# 		expect(station.bike_count).to eq(0)
# 		station.dock(bike)
# 		expect(station.bike_count).to eq(1)
# 	end


# 	it "should know when it's full" do
# 		expect(station).not_to be_full
# 		20.times {station.dock(Bike.new)}
# 		expect(station).to be_full
# 	end

# 	it "should not accept a bike if it's full" do
# 		20.times {station.dock(Bike.new)}
# 		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
# 	end

# 	it "should provide the list of available bikes" do
# 		working_bike, broken_bike = Bike.new, Bike.new
# 		broken_bike.break!
# 		station.dock(working_bike)
# 		station.dock(broken_bike)
# 		expect(station.available_bikes).to eq([working_bike])
# 	end
# end