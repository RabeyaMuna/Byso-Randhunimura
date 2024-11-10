# spec/models/event_spec.rb
require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is valid with valid attributes" do
    user = FactoryBot.create(:user)
    event = FactoryBot.build(:event, created_by: user)

    expect(event).to be_valid
    expect(event.created_by).to eq(user)
  end

  it "is not valid without a created_by" do
    event = FactoryBot.build(:event, created_by: nil)
    expect(event).to_not be_valid
  end
end
