FactoryGirl.define do
  factory :identity do
    user 
    provider "facebook"
    
    sequence :uid do |id|
      "uid#{id}"    
    end 
    
  end
end
