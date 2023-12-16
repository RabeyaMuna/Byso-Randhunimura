module Types
  class UserPaysForEventType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :pages, Integer
    field :rating, Float
    field :year_published, Integer
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
