class HousePlant < ApplicationRecord
  belongs_to :room

  validates :plant_type, :height, :room_id, presence: true
  validate :height_greater_than_or_equal_to

  def height_greater_than_or_equal_to
    if height.present? && height < 1
      errors.add(:height, "height can't be less than 1 inch")
    end
  end
end
