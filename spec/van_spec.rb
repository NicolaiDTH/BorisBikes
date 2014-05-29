require "./lib/van"

class Van; include BikeContainer; end

	describe Van do
		let(:van) {Van.new}
		let(:bike) {Bike.new}

		it "should contain the default capacity" do
			expect(van.capacity).to eq 10
		end

		it "should check if it has broken bikes" do
			broken_bike, fixed_bike = Bike.new, Bike.new
			broken_bike.break!
			van.load(broken_bike)
			van.load(fixed_bike)
			expect(van.broken_bikes).to eq [broken_bike]
		end
	end