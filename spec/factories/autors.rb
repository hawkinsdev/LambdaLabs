FactoryBot.define do
    factory :autor do
        name { Faker::Name.name}
        date_birth { Faker::Date.birthday}
    end
end