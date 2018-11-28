class RemoveCityIdFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column :attractions, :city_id, :integer
  end
end
