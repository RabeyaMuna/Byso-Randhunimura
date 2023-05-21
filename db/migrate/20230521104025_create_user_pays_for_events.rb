class CreateUserPaysForEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :user_pays_for_events do |t|
      t.decimal :amount, default: 0.0, null: false

      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
