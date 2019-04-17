# frozen_string_literal: true

require "rails_helper"

RSpec.describe TodoList, type: :model do
  let(:todo_list) { create(:todo_list, **attributes) }
  let(:attributes) do
    {
      title: "A test title"
    }
  end

  it "has a valid factory" do
    expect(build(:todo_list)).to be_valid
  end

  describe "model validations" do
    it { expect(todo_list).to allow_value(attributes[:title]).for(:title) }
    it { expect(todo_list).to validate_presence_of(:title) }
    it { expect(todo_list).to validate_uniqueness_of(:title) }
  end

  describe "model associations" do
    it { expect(todo_list).to have_many(:items) }
  end
end
