RSpec.describe Mutations::TodoListMutation do
  describe 'creating a new record' do
    let(:args) do
      {
        title: 'Some random title'
      }
    end

    it 'increases todo lists by 1' do
      expect(TodoList.count).to eq 0

      mutation = subject.fields['create_todo_list'].resolve(nil, args, nil)
      # adds one todo_list to the db
      expect(TodoList.count).to eq 1
    end
  end
end
