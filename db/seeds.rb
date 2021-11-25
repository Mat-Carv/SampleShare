# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

categories = ['Hiphop', 'Drums', 'Percussion', 'Synth', 'Lofi', 'Vintage', 'Orchestral', 'Strings', 'Misc', 'Others']

categories.each{|category|
    Category.create([name: category])
}

100.times{User.create(Faker::Internet.user('username', 'email', 'password'))}

User.all.each{|user|
    user.packs.create([
        name: Faker::Book.title , 
        description: Faker::Lorem.sentence(word_count: 6) , 
        price: Faker::Number.decimal(l_digits: 2) ,
        category_id: Faker::Number.within(range: 1..8),
        available: true  ])
}
