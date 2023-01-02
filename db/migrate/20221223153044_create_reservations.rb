class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :day, null: false
      t.string :time, null: false
      t.integer :user_id
      t.integer :workshop_id
      t.integer :user_workshop_id
      t.datetime :created_at, precision: 6, null: false
      t.datetime :updated_at, precision: 6, null: false
     
      t.timestamps
    end
  end
end
