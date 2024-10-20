# app/graphql/mutations/create_event.rb
module Mutations
  module Users
  class CreateUser <GraphQL::Schema::Mutation
    argument :user_params, Types::Input::UserInputType, required: true

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(user_params:)
      user = User.new(user_params.to_h)

      if user.save
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
 end
end 
