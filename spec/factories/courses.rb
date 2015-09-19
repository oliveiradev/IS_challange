# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name {Faker::Lorem.word}
    description {Faker::Lorem.sentence}
    status 1

    factory :invalid_course do
      name nil
      description nil
    end
  end
end

