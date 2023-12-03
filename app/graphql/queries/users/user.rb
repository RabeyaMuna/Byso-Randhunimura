module Queries
    module Users
        class User < BaseQuery
          arguments :id, ID, required: true
          
          type :user, Types::UserType, null: false

          def resolve(id:)
            user = User.find(id)
          end
            
        end
    end
end
