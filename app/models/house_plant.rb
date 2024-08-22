class HousePlant < ApplicationRecord
  belongs_to :room

  validates :plant_type, :height, :room_id, presence: true
end
