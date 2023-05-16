class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name, null: false, index: true
      t.string :phone_number, unique: true, null: false
      t.string :email, null: false, unique: true
      t.string :uuid, null: false, unique: true
      t.integer :gender
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
