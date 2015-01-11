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
end
