# app/graphql/mutations/create_event.rb
module Mutations
  module Users
    class CreateUser <GraphQL::Schema::Mutation
      argument :user_params, Types::Input::UserAttributes, required: true

      field :user, Types::UserType, null: false
      field :errors, [String], null: false

      def resolve(user_params:)
        user = User.create!(user_params.to_h)

        if user.save
          binding.pry
         return { user: user, errors: [] }
        else
          binding.pry
         return { user: nil, errors: user.errors.full_messages }
        end
      end
    end
  end
end 
