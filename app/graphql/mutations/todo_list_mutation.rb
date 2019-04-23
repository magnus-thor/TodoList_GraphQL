module Mutations
  TodoListMutation = GraphQL::ObjectType.define do
    name 'TodoListMutation'
    description 'Mutation type for todo list'

    field :create_todo_list, Types::TodoListType do
      argument :title, !types.String

      resolve ->(_obj, args, _ctx) do
        TodoList.create(
          title: args[:title]
        )
      end
    end
  end
end
