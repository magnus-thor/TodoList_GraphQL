# frozen_string_literal: true

class TodosGraphqlApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
