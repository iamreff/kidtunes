FactoryGirl.define do
  factory :user do
    fname     "Dante"
    lname     "Refford"
    email     "drefford@example.com"
    type      "Kid"
    password "foobar"
    password_confirmation "foobar"
  end 
end
