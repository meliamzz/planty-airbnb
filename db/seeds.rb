# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

puts "cleaning db"
Review.destroy_all
Booking.destroy_all
Plant.destroy_all
User.destroy_all

puts "db clean"

balloon_flowers = "Balloon Flowers"
rose = "Rose"
cactus_cactaceae = "Cactus-Cactaceae"
regal_geraniums = "Regal Geraniums"
wax_begonias = "Wax Begonias"

puts "paul set up"
paul = User.create!(
  first_name: "Paul",
  last_name: "Plant",
  address: "2 Rue de l'Hôtel de Ville, 44000 Nantes",
  email:"paul.plantes@lewagon.com",
  password: "azerty"
)

paul_plant_one = Plant.create!(
  category: regal_geraniums,
  variety: "Pelargonium domesticum",
  description:" Scent-leaved geraniums get their fragrance from the oil in their leaves. They can
  mimic all kinds of scents, including lemon, rose, mint, pine, fruits, and even chocolate. The
  flowers tend to be small and often insignificant, and the leaf shapes will vary. Besides their
  ornamental and fragrant appeal, many can also be used in cooking.",
  height: 99,
  price_per_day: 2,
  user: paul
)

file = File.open(Rails.root.join('db/seeds/plants/paul_plant_one.jpg'))
paul_plant_one.photo.attach(io: file, filename: 'paul_plant_one.jpg', content_type: 'image/jpg')
paul_plant_one.save!


paul_plant_two = Plant.create!(
  category: cactus_cactaceae,
  variety: "Easter",
  description: "Easter offers bright, colorful blooms. Easter is a forest cactus.",
  height: 45,
  price_per_day: 7,
  user: paul
)

file = File.open(Rails.root.join('db/seeds/plants/paul_plant_two.jpg'))
paul_plant_two.photo.attach(io: file, filename: 'paul_plant_two.jpg', content_type: 'image/jpg')
paul_plant_two.save!


paul_plant_three = Plant.create!(
  category: balloon_flowers,
  variety: "P. Sentimental Blue",
  description: "This dwarf variety grows about 6 inches tall with lots of 1- to 2-inch purple flowers.",
  height: 79,
  price_per_day: 3,
  user: paul
)

file = File.open(Rails.root.join('db/seeds/plants/paul_plant_three.jpg'))
paul_plant_three.photo.attach(io: file, filename: 'paul_plant_three.jpg', content_type: 'image/jpg')
paul_plant_three.save!


paul_plant_four = Plant.create!(
  category: rose,
  variety: "La Rosa Gallica Officinalis",
  description:"In the category of old roses, the Rosa Gallica Officinalis, also called Rose de
  Provins, is one of the most fragrant roses. Its large purple petals intoxicate us from June to
  July.",
  height: 28,
  price_per_day: 12,
  user: paul
)

file = File.open(Rails.root.join('db/seeds/plants/paul_plant_four.jpg'))
paul_plant_four.photo.attach(io: file, filename: 'paul_plant_four.jpg', content_type: 'image/jpg')
paul_plant_four.save!


john = User.create!(
  first_name: "John",
  last_name: "Dupont",
  address: "40 Rue du Louvre, 75001 Paris",
  email:"john.dupond@lewagon.com",
  password: "azerty"
)

john_dupond_one = Plant.create!(
  category: regal_geraniums,
  variety: "Pelargonium x hortum",
  description: "This is the most common form, the zonal geranium that is so often planted in patio pots
  and cemetery plantings, and also as a garden bedding plant. Flowers are generally solid tones of red,
  purple, pink, salmon, magenta, white, or bicolors. The leaves are oval, growing on succulent stems.
  Flowers can be single with five petals, or double. The common name zonal geraniums derives from the
  area of red, blue, or purple color that stripes through the middle of the leaves. These color zones
  are more visible in some cultivars and nearly invisible in others.",
  height: 89,
  price_per_day: 10,
  user: john
)

file = File.open(Rails.root.join('db/seeds/plants/john_dupond_one.jpg'))
john_dupond_one.photo.attach(io: file, filename: 'john_dupond_one.jpg', content_type: 'image/jpg')
john_dupond_one.save!


john_dupond_two = Plant.create!(
  category: balloon_flowers,
  variety: "P. grandiflorus Fuji series",
  description: "This is the most commonly sold variety, as well as the tallest, with 30-inch stems
  and flowers in blue, pink, or white.",
  height: 57,
  price_per_day: 8,
  user: john
)

file = File.open(Rails.root.join('db/seeds/plants/john_dupond_two.jpg'))
john_dupond_two.photo.attach(io: file, filename: 'john_dupond_two.jpg', content_type: 'image/jpg')
john_dupond_two.save!


john_dupond_three = Plant.create!(
  category: regal_geraniums,
  variety: "Pelargonium paltatum",
  description: "This is ivy-leaved geranium, which looks very similar to zonal geraniums but with a
  trailing habit that works well in hanging baskets and window boxes. Flowers are usually solid tones
  of pink, red, lilac, or white.",
  height: 120,
  price_per_day: 2,
  user: john
)

file = File.open(Rails.root.join('db/seeds/plants/john_dupond_three.jpg'))
john_dupond_three.photo.attach(io: file, filename: 'john_dupond_three.jpg', content_type: 'image/jpg')
john_dupond_three.save!


john_dupond_four = Plant.create!(
  category: wax_begonias,
  variety: "Varsity",
  description:"Particularly well-suited to being grown in a container or planter. It features flowers
  in red, white, or pink.",
  height: 155,
  price_per_day: 2,
  user: john
)

file = File.open(Rails.root.join('db/seeds/plants/john_dupond_four.jpg'))
john_dupond_four.photo.attach(io: file, filename: 'john_dupond_four.jpg', content_type: 'image/jpg')
john_dupond_four.save!


arthur = User.create!(
    first_name: "Arthur",
    last_name: "Briand",
    email:"arthur.briand@lewagon.com",
    address: "18 Rue François Garcin, 69003 Lyon",
    password: "azerty"
)

arthur_briand_one = Plant.create!(
  category: balloon_flowers,
  variety: "P. grandiflorus Komachi",
  description: "The purple-blue flowers in this variety stay in their puffy pillow stage even after blooming.",
  height: 77,
  price_per_day: 4,
  user: arthur
)

file = File.open(Rails.root.join('db/seeds/plants/arthur_briand_one.jpg'))
arthur_briand_one.photo.attach(io: file, filename: 'arthur_briand_one.jpg', content_type: 'image/jpg')
arthur_briand_one.save!

arthur_briand_two = Plant.create!(
  category: balloon_flowers,
  variety: "Platycodon grandiflorus Astra",
  description: "This type grows double flowers with 10 petals in blue, pink, or white. They're an ideal choice to start from seeds.",
  height: 60,
  price_per_day: 9,
  user: arthur
)

file = File.open(Rails.root.join('db/seeds/plants/arthur_briand_two.jpg'))
arthur_briand_two.photo.attach(io: file, filename: 'arthur_briand_two.jpg', content_type: 'image/jpg')
arthur_briand_two.save!



arthur_briand_three = Plant.create!(
  category: cactus_cactaceae,
  variety: "Bunny ear",
  description: "Bunny ear has 'bunny shaped ears and white flowers. Bunny ear is a desert cactus.",
  height: 10,
  price_per_day: 5,
  user: arthur
  )

file = File.open(Rails.root.join('db/seeds/plants/arthur_briand_three.jpg'))
arthur_briand_three.photo.attach(io: file, filename: 'arthur_briand_three.jpg', content_type: 'image/jpg')
arthur_briand_three.save!



arthur_briand_four = Plant.create!(
  category: wax_begonias,
  variety: "Paint Splash Pink",
  description:"This type of wax begonia offers showier foliage; each leaf is green with cream spots
  and marks. The pale pink flowers are a great contrast and make this an eye-catching variety.",
  height: 155,
  price_per_day: 6,
  user: arthur
)

file = File.open(Rails.root.join('db/seeds/plants/arthur_briand_four.jpg'))
arthur_briand_four.photo.attach(io: file, filename: 'arthur_briand_four.jpg', content_type: 'image/jpg')
arthur_briand_four.save!


leo = User.create!(
    first_name: "Léo",
    last_name: "Durand",
    email:"leo.durand@lewagon.com",
    address: "Pl. Pey Berland, 33000 Bordeaux",
    password: "azerty"
)

leo_durand_one = Plant.create!(
  category: cactus_cactaceae,
  variety: "Old lady",
  description: "Old lady has hair and plenty of spines, and looks like a pincushion. It's a desert cactus.",
  height: 38,
  price_per_day: 6,
  user: leo
)

file = File.open(Rails.root.join('db/seeds/plants/leo_durand_one.jpg'))
leo_durand_one.photo.attach(io: file, filename: 'leo_durand_one.jpg', content_type: 'image/jpg')
leo_durand_one.save!


leo_durand_two = Plant.create!(
  category: regal_geraniums,
  variety: "Pelargonium × domesticum",
  description:"These are larger plants with large, crinkled leaves. Plants are upright with woody
  stems, growing to 3 feet or more. These plants are derived from a hybrid of P. grandiflorum and
  P. cucullatum, and the flowers often have a distinctive speckled look that is different from the
  more solid colors of other annual geraniums. A miniature version of this type is known as the angel
  geranium.",
  height: 95,
  price_per_day: 1,
  user: leo
)

file = File.open(Rails.root.join('db/seeds/plants/leo_durand_two.jpg'))
leo_durand_two.photo.attach(io: file, filename: 'leo_durand_two.jpg', content_type: 'image/jpg')
leo_durand_two.save!


leo_durand_three = Plant.create!(
  category: rose,
  variety: " Rose of Damas",
  description:"Renowned since antiquity for its enchanting fragrance, the Damascus rose is one of
  the most popular roses by perfumers. It is even used for the manufacture of petrol and rose water
  especially in southern Morocco.",
  height: 32,
  price_per_day: 12,
  user: leo
)

file = File.open(Rails.root.join('db/seeds/plants/leo_durand_three.jpg'))
leo_durand_three.photo.attach(io: file, filename: 'leo_durand_three.jpg', content_type: 'image/jpg')
leo_durand_three.save!


leo_durand_four = Plant.create!(
  category: rose,
  variety: " Rose of Alba Semi-plena",
  description:"The large flat and white petals of the Alba Semi-plena rose are very fragrant.
  This variety of roses has the power to bloom in mid-shade from the end of spring and can reach 2
  to 4 meters in length.",
  height: 170,
  price_per_day: 12,
  user: leo
)

file = File.open(Rails.root.join('db/seeds/plants/leo_durand_four.jpg'))
leo_durand_four.photo.attach(io: file, filename: 'leo_durand_four.jpg', content_type: 'image/jpg')
leo_durand_four.save!



thomas = User.create!(
  first_name: "Thomas",
  last_name: "Hugo",
  email:"thomas.hugo@lewagon.com",
  address: "Pl. Broglie, 67000 Strasbourg",
  password: "azerty"
)


thomas_hugo_one = Plant.create!(
  category: rose,
  variety: " Rose of Centifolia",
  description:"Called centifolia (one hundred leaves in French) because of its large number of
  petals, this rose variety is still cultivated in mass in the grassy hinterland. Its fragrance,
  sweet and sweet, is used for the manufacture of essential oils and absolutes.",
  height: 170,
  price_per_day: 12,
  user: thomas
)

file = File.open(Rails.root.join('db/seeds/plants/thomas_hugo_one.jpg'))
thomas_hugo_one.photo.attach(io: file, filename: 'thomas_hugo_one.jpg', content_type: 'image/jpg')
thomas_hugo_one.save!

thomas_hugo_two = Plant.create!(
  category: regal_geraniums,
  variety: "Pelargonium domesticum",
  description:" Scent-leaved geraniums get their fragrance from the oil in their leaves. They can
  mimic all kinds of scents, including lemon, rose, mint, pine, fruits, and even chocolate. The
  flowers tend to be small and often insignificant, and the leaf shapes will vary. Besides their
  ornamental and fragrant appeal, many can also be used in cooking.",
  height: 99,
  price_per_day: 2,
  user: thomas
)

file = File.open(Rails.root.join('db/seeds/plants/thomas_hugo_two.jpg'))
thomas_hugo_two.photo.attach(io: file, filename: 'thomas_hugo_two.jpg', content_type: 'image/jpg')
thomas_hugo_two.save!


thomas_hugo_three = Plant.create!(
  category: wax_begonias,
  variety: "Super Olympia",
  description:"This variety flowers early and stands out for its larger-than-usual blooms. Flowers
  may be white, pink, or red.",
  height: 150,
  price_per_day: 5,
  user: thomas
)

file = File.open(Rails.root.join('db/seeds/plants/thomas_hugo_three.jpg'))
thomas_hugo_three.photo.attach(io: file, filename: 'thomas_hugo_three.jpg', content_type: 'image/jpg')
thomas_hugo_three.save!


thomas_hugo_four = Plant.create!(
  category: rose,
  variety: " Rose of 'Roseraie de l'Hay'",
  description:"This rose is both popular for its honey and clove fragrance, and its
  velvety-textured petals. Easy to grow and resistant to disease, it delights gardeners and
  florists.",
  height: 157,
  price_per_day: 3,
  user: thomas
)

file = File.open(Rails.root.join('db/seeds/plants/thomas_hugo_four.jpg'))
thomas_hugo_four.photo.attach(io: file, filename: 'thomas_hugo_four.jpg', content_type: 'image/jpg')
thomas_hugo_four.save!


# p "Created #{Plant.count} plants"

# Paul a loué la première plante de John pour 5 jours (d'aujourd'hui - 10j à aujourd'hui - 5j)
  # Après la fin de sa loc, Paul a laissé une review sur le Booking de la plante de John

# Créer un Booking
  # avec le bon pick_up_at   => Date.today
  # avec le bon returning_at => 10.days, Date.today - 5.days
  # avec le bon total_price  => 10 price_per_day * 5j => 50
  # avec le bon status       => "accepted"

# Créer la Review
  # associé au booking créé juste au dessus
  # avec un rating
  # avec un commentaire
  # avec un user => Paul

booking = Booking.create!(
  user: paul,
  plant: john_dupond_one,
  pick_up_at: Date.today - 10.days,
  return_at: Date.today - 5.days,
  total_price: 50,
  status: "accepted"
)

Review.create!(
  user:    paul,
  booking: booking,
  content: "Thank you Planthy, John's plant is the most beautiful plant I’ve ever seen in my life",
  rating:  5
)

# Demander si on inscrit l' id ou le nom
# Demander comment calculer les jours et le prix

# -----------------------------------------------------------------
# TODO: créer 4 bookings supplémentaires avec leur reviews
