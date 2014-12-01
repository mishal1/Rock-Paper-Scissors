require 'computer'

describe Computer do
	
	let(:computer) {Computer.new}

	it "should choose a random choice" do
		allow(computer).to receive(:choice).and_return('rock')
	end

end