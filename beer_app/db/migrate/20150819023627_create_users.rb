class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :hometown
      t.string :country

      t.timestamps null: false
    end
  end
end
