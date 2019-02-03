class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  has_many :to_locations, class_name: 'Ride', foreign_key: :to_location_id
  has_many :from_locations, class_name: 'Ride', foreign_key: :from_location_id
  has_many :rides, ->(address) { unscope(:where).where("rides.to_location_id = :address_id OR rides.from_location_id = :address_id", address_id: address.id) }

  def pretty_address
    addr = "#{line_1}"
    addr += "\n#{line_2}" if line_2.present?
    addr += "\n#{city}, #{state} #{zipcode}"
  end
end
