module Mutations
    class Role < GraphQL::Schema::Mutation
        argument :role_params, Types::Input::RoleInputType, required: true
        argument :id, ID, required: true

        field :role, Types::RoleType, null: true

        def resolve(id:, role_params:)
            role = Role.find(id)

            role.update!(role_params)

            return role
        end
    end
end
