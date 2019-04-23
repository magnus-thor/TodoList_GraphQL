module Mutations
  ItemMutation = GraphQL::ObjectType.define do
    name 'ItemMutation'
    description 'Mutations for items'

    field :create_item, Types::ItemType do
      argument :todo_list_id, !types.ID
      argument :name, !types.String

      resolve ->(_obj, args, _ctx) do
        todo_list = TodoList.find(args[:todo_list_id])
        # ensure that we actually find a todo list
        return unless todo_list

        todo_list.items.create(
          name: args[:name]
        )
      end
    end
  end
end
