# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tuning.destroy_all

standard = Tuning.create(name: "Standard")
drop_d = Tuning.create(name: "Drop D")
half_step = Tuning.create(name: "Half-Step Down")

standard.tracks.create(title: "The Trouble With Us", artist: "Chet Faker", url: "https://tabs.ultimate-guitar.com/tab/chet-faker/the
    -trouble-with-us-tabs-1786913")

drop_d.tracks.create(title: "Everlong", artist: "Foo Fighters", url: "https://tabs.ultimate-guitar.com/tab/foo-fighters/everlong-tabs-100106")

half_step.tracks.create(title: "Say It Aint So", artist: "Weezer", url: "https://tabs.ultimate-guitar.com/tab/weezer/say-it-aint-so-tabs-58945")
