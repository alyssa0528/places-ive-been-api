class AddCityToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :city, :string
  end
end
