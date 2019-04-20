RSpec.describe QueryTypes::TodoListQueryType do
  types = GraphQL::Define::TypeDefiner.instance
  let!(:todo_lists) { create(:todo_list) }

  describe 'querying all todo lists and checking for items' do

    it 'returns all our created todo lists with items' do
      query_result = subject.fields['todo_lists'].resolve(nil, nil, nil)

      todo_lists.items.each do |item|
        expect(query_result[0].items.to_a).to include(item)
      end

      expect(query_result[0].items.count).to eq(todo_lists.items.count)
    end
  end
end
