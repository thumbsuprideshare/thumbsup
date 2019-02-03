class University < ApplicationRecord
  has_one :address, as: :addressable, class_name: 'Address', inverse_of: :addressable 

end
