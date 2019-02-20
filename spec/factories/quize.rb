FactoryBot.define do
  factory :todo do
    name { Faker::Lorem.word }
    user_id nil
    # created_by { Faker::Number.number(10) }
  end
end