# frozen_string_literal: true

RSpec.describe QueryTypes::TodoListQueryType do
  types = GraphQL::Define::TypeDefiner.instance
  let!(:todo_lists) { create_list(:todo_list, 3) }

  describe "querying all todo lists" do
    it "has a :todo_lists that returns a ToDoList type" do
      expect(subject).to have_field(:todo_lists).that_returns(types[Types::TodoListType])
    end

    it "returns all our created todo lists" do
      query_result = subject.fields["todo_lists"].resolve(nil, nil, nil)

      todo_lists.each do |list|
        expect(query_result.to_a).to include(list)
      end

      expect(query_result.count).to eq(todo_lists.count)
    end
  end
end
