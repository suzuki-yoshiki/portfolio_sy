# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Video.create!(title: "ラピスラズリ",
              body: "4oLn_gdpH9Y",
              youtube_url: "https://www.youtube.com/watch?v=4oLn_gdpH9Y")

Video.create!(title: "転すら1",
              body: "lfkgVbVQjwo",
              youtube_url: "https://www.youtube.com/watch?v=lfkgVbVQjwo")

Video.create!(title: "転すら2",
              body: "JH41T9FlLig",
              youtube_url: "https://www.youtube.com/watch?v=JH41T9FlLig")

Video.create!(title: "転すら3",
              body: "mIrDogigS9U",
              youtube_url: "https://www.youtube.com/watch?v=mIrDogigS9U")

Video.create!(title: "転すら4",
              body: "W2_V7X6fJ18",
              youtube_url: "https://www.youtube.com/watch?v=W2_V7X6fJ18")

puts "Video Created"

