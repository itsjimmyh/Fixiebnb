class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id, null: false
      t.integer :listing_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :status, null: false, default: "PENDING"

      t.timestamps
    end

    add_index :requests, :user_id
    add_index :requests, :listing_id
    add_index :requests, :start_date
    add_index :requests, :end_date
  end
end
