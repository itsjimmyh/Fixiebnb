class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id, null: false
      t.string :list_title, null: false
      t.text :list_desc, null: false, default: 'Please describe your ride'
      t.string :frame, null: false, default: 'frame'
      t.string :f_wheel, null: false, default: 'regular wheel'
      t.string :r_wheel, null: false, default: 'regular wheel'
      t.string :seat, null: false, default: 'regular'
      t.string :handlebars, null: false, default: 'dropbars'
      t.string :brakes, null: false, default: 'regular'
      t.integer :daily, null: false, default: 5
      t.integer :weekly, null: false, default: 35
      t.text :rules, null: false, default: 'Please do not purposefully damage the bike'
      t.integer :deposit, null: false, default: 100


      t.timestamps
    end

    add_index :listings, :user_id
  end
end
