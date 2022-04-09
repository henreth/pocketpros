puts 'Removing Previous Data'
User.destroy_all
Character.destroy_all
Card.destroy_all

puts "Seeding Users..."
User.create!([
    {
        first_name: "King",
        last_name: "Arthur",
        username: "excalibur",
        password: "camelot",
        credits: "5000",
        packs: {
            "total": 15,
            "booster":1,
            "regular":2,
            "pro":3,
            "max":4,
            "ultra":5,
            "studio":6
        }
    },
    {
        first_name: "Sir",
        last_name: "Gawain",
        username: "greenknight",
        password: "giants",
        credits: "25",
        packs: {
            "total": 1,
            "booster":1,
            "regular":0,
            "pro":0,
            "max":0,
            "ultra":0,
            "studio":0
        }
    }

])

puts "Seeding Characters"

Character.create!([
    {
        first_name: "Vitalik",
        last_name: "Buterin",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Katherine",
        last_name: "Johnson",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Alan",
        last_name: "Turing",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Steve",
        last_name: "Jobs",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Bill",
        last_name: "Gates",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Gavin",
        last_name: "Wood",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Dabbala",
        last_name: "Reddy",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Heddy",
        last_name: "Lamarr",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Margaret",
        last_name: "Hamilton",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Mark",
        last_name: "Zuckerberg",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
    {
        first_name: "Larry",
        last_name: "Page",
        description: "~",
        image_url: "~~~~",
        birth_year: 1,
    },
])