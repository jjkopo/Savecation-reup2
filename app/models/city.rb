class City < ApplicationRecord
  has_many :tripplaces, dependent: :destroy
end
