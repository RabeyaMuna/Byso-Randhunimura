module Queries
    module Users
        class UserList < BaseQuery
            type :user, Types::UserType, null: false

            def resolve(params: {})
               users = User.all
            end

        end
    end
end
