10.times do
    role = FactoryBot.create(:role, role_name: 0)

    role01 = FactoryBot.create(:role, role_name: 1)

    role02 = FactoryBot.create(:role, role_name: 2)

    user = FactoryBot.create(:user, role_id: role.id)

    user01 = FactoryBot.create(:user, role_id: role01.id)

    user02 = FactoryBot.create(:user, role_id: role02.id)

    event = FactoryBot.create(:event)

    user_pays_for_event = FactoryBot.create(:user_pays_for_event, user_id: user.id, event_id: event.id)
end
