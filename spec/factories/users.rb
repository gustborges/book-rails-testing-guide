FactoryBot.define do
  factory :user do
    firt_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    role { "pacient" }

    # Nested factories inherit from the parent factory
    # e.g. FactoryBot.create(:physician_user)
    factory :physician_user do
      role { "physician" }
    end

    # Traits are additional attributes and you can call them like this:
    # e.g FactoryBot.create(:user, :with_phone_number)
    # e.g FactoryBot.create(:user, traits: [:with_name, :with_phone_number])
    trait :with_phone do
      phone { Faker::PhoneNumber.phone_number }
    end

    # Traits vs nested factories: which to use?
    # If the factory HAS something, use traits.
    # If the factory IS something, use nested factories.
    # In the case above, the user HAS a phone number, but is still a user.
    # In the physician case, the user is another kind of user, and can behave differently.
  end
end
