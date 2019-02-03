class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :university
  has_many :rides, class_name: "Ride", foreign_key: :user_id, inverse_of: :driver

  has_many :passengers, class_name: "RidePassenger", foreign_key: :user_id
  has_many :passenger_rides, through: :passengers, class_name: "Ride"
end
