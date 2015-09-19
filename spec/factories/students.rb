# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    name {Faker::Name.name}
    register_number {Faker::Company.swedish_organisation_number}
    status 1

    factory :invalid_student do
      name nil
      register_number nil
    end
  end
end
