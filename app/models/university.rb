class University < ApplicationRecord
  has_one :address, as: :addressable, class_name: 'Address', inverse_of: :addressable

  has_many :students, class_name: 'User', foreign_key: :university_id, inverse_of: :university

  def rides
    address.rides
  end
end
