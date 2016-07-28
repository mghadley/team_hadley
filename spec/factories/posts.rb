FactoryGirl.define do
  factory :post do
    sequence :title do |n|
    	"title#{n}"
    end
    body "MyText"
  end
end
