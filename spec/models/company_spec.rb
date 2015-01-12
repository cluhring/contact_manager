require 'rails_helper'

RSpec.describe Company, :type => :model do

  let(:company) do
    Company.new(name: "Thoughtbot")
  end

  it "is valid" do
    expect(company).to be_valid
  end

  it "is invalid without a name" do
    company.name = nil
    expect(company).to be_invalid
  end

  it "responds with its phone numbers after they're created" do
    phone_number = company.phone_numbers.build(number: '333-4444')
    expect(phone_number.number).to eq('333-4444')
  end

  it 'responds with its created email addresses' do
    company.email_addresses.build(address: 'yo@yo.com')
    expect(company.email_addresses.map(&:address)).to eq(['yo@yo.com'])
  end

end
