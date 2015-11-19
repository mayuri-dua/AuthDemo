FactoryGirl.define do
  factory :user do
    name "test user"
    admin false
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password "test@1234"
    password_confirmation "test@1234"
  end

end
