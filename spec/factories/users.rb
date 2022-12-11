FactoryBot.define do
  factory :user do
      sequence(:email) { |n| "person-#{n}@example.com" }
      password { '123greetings' }
  end
end
FactoryBot.define do
  factory :teacher do
      sequence(:email) { |n| "person-#{n}@example.com" }
      password { '123greetings' } account_id{ '0'}
  end
end
FactoryBot.define do
  factory :ta do
      sequence(:email) { |n| "person-#{n}@example.com" }
      password { '123greetings' } account_id{ '1'}
  end
end