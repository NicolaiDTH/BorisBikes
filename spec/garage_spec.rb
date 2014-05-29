require "./lib/garage"

class Garage; include BikeContainer; end

	describe Garage do
		let(:garage){Garage.new}
		let(:bike) {Bike.new}

		it "should contain the default capacity" do
			expect(garage.capacity).to eq 10
		end

		it "should fix broken bikes" do
			broken_bike = Bike.new
			broken_bike.break!
			garage.dock(broken_bike)
			expect(garage.broken_bikes).to eq [broken_bike]
			garage.fix_bikes
			expect(garage.broken_bikes).to eq []
		end
	end