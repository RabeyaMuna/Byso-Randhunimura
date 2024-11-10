require 'rails_helper'

RSpec.describe Mutations::Users::CreateUser, type: :request do
  describe '.resolve' do
    let!(:role) { FactoryBot.create(:role) }

    let(:user_params) do
      {
        full_name: 'John Doe',
        email: 'johndoe@example.com',
        phone_number: '8801901234567',
        gender: 'MALE',  # Use the correct enum value (uppercase)
        status: 'ACTIVE',  # Use the correct enum value (uppercase)
        role_id: role.id
      }
    end

    it 'creates a new user' do
      post '/graphql', params: { query: mutation(user_params) }
      
      json = JSON.parse(response.body)
      binding.pry
      data = json['data']
     
      expect(User.count).to eq(1)
      expect(data['errors']).to be_empty
    end

    it 'returns errors if user creation fails' do
      # Passing invalid email to simulate a failure
      user_params[:email] = ''

      post '/graphql', params: { query: mutation(user_params) }
      binding.pry
      json = JSON.parse(response.body)

      expect(json['data']).to be_nil
      expect(json['errors']).not_to be_empty
      expect(json['errors'][0]).to include('Email can\'t be blank')
    end
  end

  def mutation(user_params)
    <<~GQL
      mutation {
        createUser(
          userParams: {
            fullName: "#{user_params[:full_name]}",
            email: "#{user_params[:email]}",
            phoneNumber: "#{user_params[:phone_number]}",
            gender: #{user_params[:gender]},  # Pass gender as an enum (no quotes)
            status: #{user_params[:status]},  # Pass status as an enum (no quotes)
            roleId: "#{user_params[:role_id]}"
          }
        ) {
          user {
            id
            fullName
            email
            phoneNumber
            gender
            role {
              id
              roleName
            }
            status
          }
          errors  # Errors field should return a simple string or array, not an object with "message"
        }
      }
    GQL
  end
end
