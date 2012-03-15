# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :badge do
    sequence(:title) {|n| "badge-#{n}"}
    image_url "http://google.com/whatever.jpg"
    description "my describer"
    owner_id 1
  end
end
