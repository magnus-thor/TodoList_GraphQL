# frozen_string_literal: true

20.times do
  TodoList.create(
    title: Faker::Lorem.word
  )
end

lists = TodoList.all

# for each Todo List, add 5 Items
lists.each do |list|
  5.times do
    list.items.create(
      name: Faker::Lorem.word,
      done: [true, false].sample
    )
  end
end
