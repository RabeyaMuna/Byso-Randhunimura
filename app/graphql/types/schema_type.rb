# app/graphql/types/schema_type.rb
module Types
  class Schema < GraphQL::Schema
    query Types::QueryType
    mutation Types::MutationType
  end
end
