class AddRoomIdToHousePlants < ActiveRecord::Migration[5.2]
  def change
    add_reference :house_plants, :room, foreign_key: true
  end
end
