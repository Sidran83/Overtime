FactoryBot.define do
  sequence(:email) do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name { 'Jon' }
    last_name { 'Snow' }
    email { generate :email }
    password { 'azeaze' }
    password_confirmation { 'azeaze' }
  end

  factory :admin_user, class: 'AdminUser' do
    first_name { 'Admin' }
    last_name { 'User' }
    email { generate :email }
    password { 'azeaze' }
    password_confirmation { 'azeaze' }
  end
end
