require 'faker'

Gossip.destroy_all
User.destroy_all
City.destroy_all

10.times do        #cree 10 villes
    City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip)
end

10.times do        #cree 10 user avec une ville en reference
    User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, mail: Faker::Internet.email, age: rand(18..99), city_id: rand(1..10))
end

20.times do |index|    #cree 20 gossip en reference avec user
    Gossip.create!(title: "Gossip#{index}",content: Faker::ChuckNorris.fact, user_id: rand(1..10))
end
