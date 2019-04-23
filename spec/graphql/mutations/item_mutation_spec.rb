RSpec.describe Mutations::ItemMutation do
  describe 'creating a new record' do
    # an item belongs to a todo list so we create one
    let!(:todo_list) { create(:todo_list) }

    it 'adds a new item' do
      args = {
        todo_list_id: todo_list.id,
        name: 'An amazing name',
      }

      subject.fields['create_item'].resolve(nil, args, nil)
      # The items count increases by 1
      expect(Item.count).to eq(4)
      # The name of the most recently created item matches the value we passed in args
      expect(Item.last.name).to eq('An amazing name')
    end
  end
end
