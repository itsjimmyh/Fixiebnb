class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false

      # no!
      t.string :password, null: false
      t.timestamps
    end
  end
end
