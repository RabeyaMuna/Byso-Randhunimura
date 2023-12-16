# app/graphql/mutations/create_event.rb
module Mutations
  module Users 
  class UpdateeUser <GraphQL::Schema::Mutation
    argument :id, ID, required: true
    argument :user_params, Types::Input::UserInputType, required: true

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(id:, user_params:)
      user = User.find(id)

      user.update(user_params)

      return user
    end
  end
end
end 
