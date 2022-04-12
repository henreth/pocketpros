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
        credits: 5000,
        packs: {
            "total": 15,
            "booster":0,
            "regular":3,
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
        credits: 25,
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
        image_url: "vitalikbuterin.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Katherine",
        last_name: "Johnson",
        description: "~",
        image_url: "katherinejohnson.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Alan",
        last_name: "Turing",
        description: "~",
        image_url: "alanturing.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Steve",
        last_name: "Jobs",
        description: "~",
        image_url: "stevejobs.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Bill",
        last_name: "Gates",
        description: "~",
        image_url: "billgates.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Grace",
        last_name: "Hopper",
        description: "~",
        image_url: "gracehopper.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Joan",
        last_name: "Clarke",
        description: "~",
        image_url: "joanclarke.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Gavin",
        last_name: "Wood",
        description: "~",
        image_url: "gavinwood.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Mary",
        last_name: "Jackson",
        description: "~",
        image_url: "maryjackson.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Mary Kenneth",
        last_name: "Keller",
        description: "~",
        image_url: "marykennethkeller.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Raj",
        last_name: "Reddy",
        description: "~",
        image_url: "rajreddy.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Hedy",
        last_name: "Lamarr",
        description: "~",
        image_url: "hedylamarr.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Margaret",
        last_name: "Hamilton",
        description: "~",
        image_url: "margarethamilton.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Mark",
        last_name: "Zuckerberg",
        description: "~",
        image_url: "markzuckerberg.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Anita",
        last_name: "Borg",
        description: "~",
        image_url: "anitaborg.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Larry",
        last_name: "Page",
        description: "~",
        image_url: "larrypage.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Yukihiro",
        last_name: "Matsumoto",
        description: "~",
        image_url: "yukihiromatsumoto.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Jeff",
        last_name: "Bezos",
        description: "~",
        image_url: "jeffbezos.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Annie",
        last_name: "Easley",
        description: "~",
        image_url: "annieeasley.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Ada",
        last_name: "Lovelace",
        description: "~",
        image_url: "adalovelace.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Clarence",
        last_name: "Ellis",
        description: "~",
        image_url: "clarenceellis.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Tim",
        last_name: "Berners Lee",
        description: "~",
        image_url: "timbernerslee.jpeg",
        birth_year: 1,
    },
    {
        first_name: "John",
        last_name: "Von Neumann",
        description: "~",
        image_url: "johnvonneumann.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Steve",
        last_name: "Wozniak",
        description: "~",
        image_url: "stevewozniak.jpeg",
        birth_year: 1,
    },
    {
        first_name: "J.C.R.",
        last_name: "Licklider",
        description: "~",
        image_url: "jcrlicklider.jpeg",
        birth_year: 1,
    },
    {
        first_name: "John",
        last_name: "McCarthy",
        description: "~",
        image_url: "johnmccarthy.jpeg",
        birth_year: 1,
    },


])