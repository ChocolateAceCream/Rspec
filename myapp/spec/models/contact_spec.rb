require 'rails_helper'

RSpec.describe Contact, type: :model do

	it "has a valid factory" do
		expect(FactoryGirl.create(:contact)).to be_valid
	end

    it "phone number should not longer than 10" do
        expect(FactoryGirl.build(:contact, phone_number: 1234510101010101010)).not_to be_valid
    end

	it "is invalid without a firstname" do
		expect(FactoryGirl.build(:contact, full_name: nil)).not_to be_valid
	end

	 it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:phone_number) }
    it { is_expected.to validate_presence_of(:address) }

end
