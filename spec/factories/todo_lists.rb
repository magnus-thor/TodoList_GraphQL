# frozen_string_literal: true

FactoryBot.define do
  factory :todo_list do
    sequence(:title) { |n| "#{Faker::Lorem.word}-#{n}" }
  end
end
