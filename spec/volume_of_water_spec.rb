require 'volume_of_water'


describe VolumeOfWater do
	describe ".call" do
		
		it "accepts an array" do
			expect { VolumeOfWater.([1]) }.not_to raise_error
		end

		it "returns an integer" do
			expect { Integer(VolumeOfWater.([1])) }.not_to raise_error
		end

		# context "given [1,3,2,4,1,3,1,4,5,2,2,1,4,2,2]" do
		# 	it "returns 15" do
		# 		expect(VolumeOfWater.([1,3,2,4,1,3,1,4,5,2,2,1,4,2,2])).to eql(15)
		# 	end
		# end

	end
end