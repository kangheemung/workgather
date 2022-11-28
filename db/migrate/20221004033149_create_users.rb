class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.integer :gender
      t.string :u_profile_id
      t.timestamps
    end
  end
end

