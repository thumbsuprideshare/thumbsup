class RidePassenger < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :ride, class_name: "Ride"
  enum status: { pending: 0, confirmed: 1, canceled: 2 }
end
