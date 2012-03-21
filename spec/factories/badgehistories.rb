# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :badgehistory do
    sequence(:user_id) {|n| "#{n}"}
    badge_id 1
    dropped_at "2012-03-14 18:00:53"
    user_followers_snapshot 5
  end
end
