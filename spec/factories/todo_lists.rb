# frozen_string_literal: true

FactoryBot.define do
  factory :todo_list do
    sequence(:title) { |n| "#{Faker::Lorem.word}-#{n}" }

    after :create do |todo_list|
      create_list :item, 3, todo_list: todo_list
    end
  end
end
