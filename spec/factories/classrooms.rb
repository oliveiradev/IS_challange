# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :classroom do
    student
    course
    entry_at nil

    factory :invalid_classroom do
      student nil
      course nil
    end
  end
end
