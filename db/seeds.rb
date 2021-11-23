# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)




Plant.destroy_all

balloon_flowers = "Balloon Flowers"
rose = "Rose"
cactus_cactaceae = "Cactus-Cactaceae"
regal_geraniums = "Regal Geraniums"
wax_begonias = "Wax Begonias"



paul = User.create!(
    first_name: "Paul",
    last_name: "Plant",
    address: "Nantes",
    email:"paul.plantes@lewagon.com",
    password: "azerty"
)

    Plant.create!(
      category: regal_geraniums,
      variety: "Pelargonium domesticum",
      description:" Scent-leaved geraniums get their fragrance from the oil in their leaves. They can
      mimic all kinds of scents, including lemon, rose, mint, pine, fruits, and even chocolate. The
      flowers tend to be small and often insignificant, and the leaf shapes will vary. Besides their
      ornamental and fragrant appeal, many can also be used in cooking.",
      height: 99,
      price_per_day: 2,
      rating: 5,
      user: paul
    )

    Plant.create!(
      category: cactus_cactaceae,
      variety: "Easter",
      description: "Easter offers bright, colorful blooms. Easter is a forest cactus.",
      height: 45,
      price_par_day: 7,
      rating: 3,
      user: paul
    )

    Plant.create!(
      category: balloon_flowers,
      variety: "P. Sentimental Blue",
      description: "This dwarf variety grows about 6 inches tall with lots of 1- to 2-inch purple flowers.",
      height: 79,
      price_par_day: 3,
      rating: 4,
      user: paul
    )

    Plant.create!(
      category: rose,
      variety: "La Rosa Gallica Officinalis",
      description:"In the category of old roses, the Rosa Gallica Officinalis, also called Rose de
      Provins, is one of the most fragrant roses. Its large purple petals intoxicate us from June to
      July.",
      height: 28,
      price_par_day: 12,
      rating: 5,
      user: paul
    )


john = User.create!(
    first_name: "John",
    last_name: "Plant",
    address: "Rezé",
    email:"john.plant@lewagon.com",
    password: "azerty"
)

    Plant.create!(
      category: regal_geraniums,
      variety: "Pelargonium x hortum",
      description: "This is the most common form, the zonal geranium that is so often planted in patio pots
      and cemetery plantings, and also as a garden bedding plant. Flowers are generally solid tones of red,
      purple, pink, salmon, magenta, white, or bicolors. The leaves are oval, growing on succulent stems.
      Flowers can be single with five petals, or double. The common name zonal geraniums derives from the
      area of red, blue, or purple color that stripes through the middle of the leaves. These color zones
      are more visible in some cultivars and nearly invisible in others.",
      height: 89,
      price_par_day: 10,
      rating: 5,
      user: john
    )

    Plant.create!(
      category: balloon_flowers,
      variety: "P. grandiflorus Fuji series",
      description: "This is the most commonly sold variety, as well as the tallest, with 30-inch stems
      and flowers in blue, pink, or white.",
      height: 57,
      price_par_day: 8,
      rating: 5,
      user: john
    )

    Plant.create!(
      category: regal_geraniums,
      variety: "Pelargonium paltatum",
      description: "This is ivy-leaved geranium, which looks very similar to zonal geraniums but with a
      trailing habit that works well in hanging baskets and window boxes. Flowers are usually solid tones
      of pink, red, lilac, or white.",
      height: 120,
      price_par_day: 2,
      rating: 5,
      user: john
    )


    Plant.create!(
      category: wax_begonias,
      variety: "Varsity",
      description:"Particularly well-suited to being grown in a container or planter. It features flowers
      in red, white, or pink.",
      height: 155,
      price_par_day: 2,
      rating: 5,
      user: john
    )


arthur = User.create!(
    first_name: "Arthur",
    last_name: "Plant",
    email:"arthur.plant@lewagon.com",
    address: "Bouguenais",
    password: "azerty"
)

    Plant.create!(
      category: balloon_flowers,
      variety: "P. grandiflorus Komachi",
      description: "The purple-blue flowers in this variety stay in their puffy pillow stage even after blooming.",
      height: 77,
      price_par_day: 4,
      rating: 4,
      user: arthur
    )

    Plant.create!(
      category: balloon_flowers,
      variety: "Platycodon grandiflorus Astra",
      description: "This type grows double flowers with 10 petals in blue, pink, or white. They're an ideal choice to start from seeds.",
      height: 60,
      price_par_day: 9,
      rating: 2,
      user: arthur
    )

    Plant.create!(
      category: cactus_cactaceae,
      variety: "Bunny ear",
      description: "Bunny ear has 'bunny shaped ears and white flowers. Bunny ear is a desert cactus.",
      height: 10,
      price_par_day: 5,
      rating: 4,
      user: arthur
    )

    Plant.create!(
      category: wax_begonias,
      variety: "Paint Splash Pink",
      description:"This type of wax begonia offers showier foliage; each leaf is green with cream spots
      and marks. The pale pink flowers are a great contrast and make this an eye-catching variety.",
      height: 155,
      price_par_day: 6,
      rating: 5,
      user: arthur
    )


leo = User.create!(
    first_name: "Léo",
    last_name: "Plant",
    email:"leo.plant@lewagon.com",
    address: "Vertou",
    password: "azerty"
)

    Plant.create!(
      category: cactus_cactaceae,
      variety: "Old lady",
      description: "Old lady has hair and plenty of spines, and looks like a pincushion. It's a desert cactus.",
      height: 38,
      price_par_day: 6,
      rating: 5,
      user: leo
    )

    Plant.create!(
      category: regal_geraniums,
      variety: "Pelargonium × domesticum",
      description:"These are larger plants with large, crinkled leaves. Plants are upright with woody
      stems, growing to 3 feet or more. These plants are derived from a hybrid of P. grandiflorum and
      P. cucullatum, and the flowers often have a distinctive speckled look that is different from the
      more solid colors of other annual geraniums. A miniature version of this type is known as the angel
      geranium.",
      height: 95,
      price_par_day: 1,
      rating: 1,
      user: leo
    )

    Plant.create!(
      category: rose,
      variety: " Rose of Damas",
      description:"Renowned since antiquity for its enchanting fragrance, the Damascus rose is one of
      the most popular roses by perfumers. It is even used for the manufacture of petrol and rose water
      especially in southern Morocco.",
      height: 32,
      price_par_day: 12,
      rating: 5,
      user: leo
    )

    Plant.create!(
      category: rose,
      variety: " Rose of Alba Semi-plena",
      description:"The large flat and white petals of the Alba Semi-plena rose are very fragrant.
      This variety of roses has the power to bloom in mid-shade from the end of spring and can reach 2
       to 4 meters in length.",
      height: 170,
      price_par_day: 12,
      rating: 4,
      user: leo
    )



thomas = User.create!(
    first_name: "Thomas",
    last_name: "Plant",
    email:"thomas.plant@lewagon.com",
    address: "Sautron",
    password: "azerty"
)

    Plant.create!(
      category: rose,
      variety: " Rose of Centifolia",
      description:"Called centifolia (one hundred leaves in French) because of its large number of
      petals, this rose variety is still cultivated in mass in the grassy hinterland. Its fragrance,
      sweet and sweet, is used for the manufacture of essential oils and absolutes.",
      height: 170,
      price_par_day: 12,
      rating: 4,
      user: thomas
    )

    Plant.create!(
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

    Plant.create!(
      category: wax_begonias,
      variety: "Super Olympia",
      description:"This variety flowers early and stands out for its larger-than-usual blooms. Flowers
      may be white, pink, or red.",
      height: 150,
      price_par_day: 5,
      rating: 4,
      user: thomas
    )


    Plant.create!(
      category: rose,
      variety: " Rose of 'Roseraie de l'Hay'",
      description:"This rose is both popular for its honey and clove fragrance, and its
      velvety-textured petals. Easy to grow and resistant to disease, it delights gardeners and
      florists.",
      height: 157,
      price_par_day: 3,
      rating: 5,
      user: thomas
    )

# p "Created #{Plant.count} plants"
