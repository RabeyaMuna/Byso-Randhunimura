# app/graphql/mutations/create_event.rb
module Mutations
  module Users
  class CreateRole < GraphQL::Schema::Mutation
    argument :role_params, Types::Input::RoleInputType, required: true

    type Types::RoleType

    def resolve(role_params:)
      role = Role.new(role_params.to_h)

      if role.save
        { role: role, errors: [] }
      else
        { role: nil, errors: role.errors.full_messages }
      end
    end
  end
end
end 
