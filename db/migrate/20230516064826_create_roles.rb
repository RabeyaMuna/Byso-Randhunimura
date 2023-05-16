class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :role_name, null: false, index: true
      t.integer :uuid, null: false, unique: true, default: SecureRandom.uuid

      t.timestamps
    end
  end
end
