class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :tittle, null: false, index: true
      t.string :uuid, null: false, unique: true, default: SecureRandom.uuid
      t.text :event_description
      t.decimal :total_donation_amount_collected, default: 0.0
      t.datetime :start_date_of_event
      t.datetime :last_date_of_submission
      
      t.timestamps
    end
  end
end
