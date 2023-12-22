FactoryBot.define do 
    factory :book do
        title { Faker::Book.title}
        year_publication { Faker::Number.between(from: 1900, to: 2023)}
        autor
    end
end