class CreateGyms < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.string :gym_name
      t.string :phone_number
      t.string :address
      t.string :yelp_id

      t.timestamps
    end
  end
end
