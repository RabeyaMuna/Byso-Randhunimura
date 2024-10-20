require 'rails_helper'

RSpec.describe Mutations::Users::CreateUser, type: :request do
  describe '.resolve' do
    let(:user_params) do
      {
        full_name: 'John Doe',
        email: 'johndoe@example.com',
        phone_number: '1234567890',
        gender: 'MALE',
        role: 'ADMIN',
        status: 'ACTIVE',
        password: 'password',
        password_confirmation: 'password'
      }
    end

    it 'creates a new user' do
      post '/graphql', params: { query: mutation(user_params) }

      json = JSON.parse(response.body)
      data = json['data']['createUser']

      expect(data['user']).to include(
        'fullName' => 'John Doe',
        'email' => 'johndoe@example.com',
        'phoneNumber' => '1234567890',
        'gender' => 'MALE',
        'role' => 'ADMIN',
        'status' => 'ACTIVE'
      )
      expect(data['errors']).to be_empty
    end

    it 'returns errors if user creation fails' do
      # Passing invalid email to simulate a failure
      user_params[:email] = ''

      post '/graphql', params: { query: mutation(user_params) }

      json = JSON.parse(response.body)
      data = json['data']['createUser']

      expect(data['user']).to be_nil
      expect(data['errors']).not_to be_empty
    end
  end

  def mutation(user_params)
    <<~GQL
      mutation {
        createUser(input: {
          userParams: #{user_params}
        }) {
          user {
            fullName
            email
            phoneNumber
            gender
            role
            status
          }
          errors
        }
      }
    GQL
  end
end
