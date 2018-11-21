class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :city_id
      t.integer :year_visited
      t.string :img_url
      t.string :notes

      t.timestamps
    end
  end
end
