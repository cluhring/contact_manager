require 'rails_helper'

RSpec.describe EmailAddress, :type => :model do

  let(:email_address) { EmailAddress.new(address: "2300 S Rock Creek Pkwy, Apt 19-104, Superior, CO 80025", person_id: 1) }

  it 'is valid' do
    expect(email_address).to be_valid
  end

  it 'is invalid without a address' do
    email_address.address = nil
    expect(email_address).to_not be_valid
  end

end

#
#   it 'must have a reference to a person' do
#     phone_number.person_id = nil
#     expect(phone_number).to_not be_valid
#   end
#
#   it 'is associated with a person' do
#     expect(phone_number).to respond_to(:person)
#   end
# end
