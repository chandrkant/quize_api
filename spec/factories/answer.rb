# spec/factories/items.rb
FactoryBot.define do
  factory :item do
    name { Faker::StarWars.character }
    done false
    question_id nil
  end
end