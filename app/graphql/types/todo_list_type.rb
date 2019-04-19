# frozen_string_literal: true

module Types
  TodoListType = GraphQL::ObjectType.define do
    name "TodoListType"
    description "The Todo List type"

    field :id, !types.ID
    field :title, !types.String
  end
end
