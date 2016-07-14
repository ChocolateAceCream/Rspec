require 'rails_helper'
require 'test_helper'

RSpec.describe ContactsController, type: :controller do
    describe "POST #create" do
       context "with valid attributes" do
          it "create new contact" do
              count = Contact.count
             post :create, contact: attributes_for(:contact)
             expect(Contact.count).to eq(count+1)
          end
       end
    end
end
