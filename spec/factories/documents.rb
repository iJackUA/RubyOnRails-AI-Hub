FactoryBot.define do
  factory :document do
    title { "MyString" }
    content { "MyText" }
    file { nil }
    topic { "MyString" }
  end
end
