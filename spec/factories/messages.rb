FactoryBot.define do
  factory :message do
      # content {Faker::Lorem.sentence}
      content {Faker::Games::Touhou.spell_card}
      association :user
      association :room
      
      after(:build) do |message|
        message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
      end
  end
end