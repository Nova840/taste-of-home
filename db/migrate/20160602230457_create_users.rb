class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :password_digest, null: false
      t.string :email
      t.boolean :owner, default: false

      t.timestamps null: false
    end
  end
end
