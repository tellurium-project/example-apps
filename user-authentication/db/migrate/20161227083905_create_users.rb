class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ''
      t.string :password_digest

      t.index :email, unique: true
      t.timestamps
    end
  end
end
