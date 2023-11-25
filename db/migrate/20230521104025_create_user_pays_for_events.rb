class CreateUserPaysForEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :user_pays_for_events do |t|
      t.decimal :amount, default: 0.0, null: false

      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :payment_method, null: false
      t.decimal :donated_amount, null: false, default: 0.0
      t.uuid :payment_id, unique: true
      t.datetime :paid_on

      t.timestamps
    end
  end
end
