# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    title "MyString"
    browser_title "MyString"
    keywords "MyString"
    meta_description "MyString"
    body "MyText"
    path "MyString"
  end
end
