require 'rails_helper'

RSpec.describe Contact, type: :model do

    it "does not allow duplicate phone number per contact" do
        contact = FactoryGirl.create(:contact)
        FactoryGirl(:phone, contact: contact, phone_number: 12345)
        FactoryGirl(:phone, contact: contact, phone_number:12345)
    end
end
