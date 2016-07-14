class Contact < ActiveRecord::Base
    validates_presence_of :full_name, :email, :phone_number, :address
    validates :phone_number, length: { in: 1..10 }
    # validates :phone_number, uniqueness: true
end
