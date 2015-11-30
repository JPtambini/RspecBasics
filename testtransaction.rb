require './transaction.rb'

RSpec.configure do |rspec|
	rspec.color = true
end


describe Transaction do

context "number is valid" do
	let (:transaction){Transaction.new(credit_account: 90, debit_account: 50 , amount: 66 , time: Time.now )}

	it "#valid_account_number?(credit)" do
		expect(transaction.valid_account_number?(transaction.credit_account)).to eq(true)
	end
	it "#valid_account_number?(debit)" do
		expect(transaction.valid_account_number?(transaction.debit_account)).to eq(true)
	end

	it "#valid_amount?" do 
		expect(transaction.valid_amount?(transaction.amount)).to eq(true)
	end

	it "#amount_to_currency" do
		expect(transaction.amount_to_currency).to eq("$.66")
	end
end

context "#{}number is invalid" do
	let (:transaction) {Transaction.new(credit_account: "three", debit_account: "seven" , amount: "two" , time: "8pm" )}

	it "#valid_account_number?(credit)" do
		expect{transaction.valid_account_number?(transaction.credit_account)}.to raise_error(ArgumentError)
	end
	it "#valid_account_number?(debit)" do
		expect{transaction.valid_account_number?(transaction.debit_account)}.to raise_error(ArgumentError)
	end

	it "#valid_amount?" do 
		expect{transaction.valid_amount?(transaction.amount)}.to raise_error(ArgumentError)
	end

	it "#valid_time?" do
		expect{transaction.valid_time?(transaction.time)}.to raise_error(ArgumentError)
	end	
end

end

