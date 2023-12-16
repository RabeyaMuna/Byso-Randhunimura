module Mutations
    module Users
        class DeleteUser < BaseMutation
            argument :id, ID, required: true

            field :user, Types::UserType, null: true
            field :errors, [String], null: false

            def resolve(id: nil)
                user = User.find(id)

                user.destroy!
            end
        end
    end
end
