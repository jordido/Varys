require_relative 'varys.rb'
describe "Varys" do
	before do
		@varys = Varys.new
	end
	it "should receive words, reverse them and return only the ones which have five letters or more" do
		@varys.backwards_wording(["Hola", "Christina", "me", "llamo", "Varys", "y", "alucino"]).should == (["anitsirhC", "omall", "syraV","onicula"])
	end
	it "should receive words, reverse them and only return 5+" do
		@varys.backwards_wording(["Hola"]).should == ([])
	end
	it "Returns above 0 when it is not Friday." do
		@varys.friday_numbers([1.7,2.345,-0.43,-3,0]).should == ([1.7,2.345,0]) 
	end
end
describe "Varys on Friday" do
	before do
		@varys = Varys.new
	end
	before do
		new_time = Time.local(2014, 9, 26, 12, 0, 0)
		Timecop.freeze(new_time)
		new_time == Time.now # ==> true
	end
		it "After changing date to friday, return below 0" do
		@varys.friday_numbers([1.7,2.345,-0.43,-3,0]).should == ([-0.43,-3])
	end
end