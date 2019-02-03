class Ride < ApplicationRecord
  belongs_to :to_location, class_name: 'Address'
  belongs_to :from_location, class_name: "Address"
  belongs_to :driver, class_name: "User", foreign_key: :user_id

  has_many :passenger, class_name: "RidePassenger", foreign_key: :user_id

end
