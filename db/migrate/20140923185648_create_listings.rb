class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id, null: false
      t.string :list_title, null: false
      t.text :list_desc, null: false, default: 'Please describe your ride'
      t.integer :price, null: false, default: 5
      t.float :latitude
      t.float :longitude
      t.string :street, null: false
      t.string :city, null: false
      t.string :state
      t.integer :zip
      t.integer :deposit, null: false, default: 100

      t.timestamps
    end

    add_index :listings, :user_id
  end
end
