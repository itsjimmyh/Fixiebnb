class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id, null: false
      t.string :list_title, null: false
      t.text :list_desc, null: false, default: 'Please describe your ride'
      t.integer :price, null: false, default: 5
      t.float :latitude
      t.float :longitude
      t.string :address, null: false
      t.string :city, null: false, default: 'San Francisco'
      t.integer :zip
      t.integer :deposit, null: false, default: 100

      t.timestamps
    end

    add_index :listings, :user_id
    add_index :listings, :latitude
    add_index :listings, :longitude
  end
end
