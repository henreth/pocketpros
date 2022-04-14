puts 'Removing Previous Data'
User.destroy_all
Character.destroy_all
Card.destroy_all
Transaction.destroy_all

puts "Seeding Users..."
User.create!([
    {
        first_name: "King",
        last_name: "Arthur",
        username: "excalibur",
        password: "camelot",
        credits: 5000,
        packs: {
            "total": 21,
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
    {
        first_name: "Stanislaw",
        last_name: "Ulam",
        description: "~",
        image_url: "stanislawulam.jpeg",
        birth_year: 1,
    },
    {
        first_name: "Heron",
        last_name: "of Alexandria",
        description: "~",
        image_url: "heronofalexandria.jpeg"
    },
    {
        first_name: "Guido",
        last_name: "Van Rossum",
        description: "~",
        image_url: "guidovanrossum.jpeg"
    },
    {
        first_name: "John W.",
        last_name: "Tukey",
        description: "~",
        image_url: "johnwtukey.jpeg"
    },
    {
        first_name: "Joseph Marie",
        last_name: "Jacquard",
        description: "~",
        image_url: "josephmariejacquard.jpeg"
    },
    {
        first_name: "Charles",
        last_name: "Babbage",
        description: "~",
        image_url: "charlesbabbage.jpeg"
    },
    {
        first_name: "Dorothy",
        last_name: "Vaughan",
        description: "~",
        image_url: "dorothyvaughan.jpeg"
    },
    {
        first_name: "Tommy",
        last_name: "Flowers",
        description: "~",
        image_url: "tommyflowers.jpeg"
    },
    {
        first_name: "Linus",
        last_name: "Torvalds",
        description: "~",
        image_url: "linustorvalds.jpeg"
    },
    {
        first_name: "John",
        last_name: "Backus",
        description: "~",
        image_url: "johnbackus.jpeg"
    },
    {
        first_name: "Douglas",
        last_name: "Crockford",
        description: "~",
        image_url: "douglascrockford.jpeg"
    },
    {
        first_name: "Miguel",
        last_name: "De Izaca",
        description: "~",
        image_url: "migueldeizaca.jpeg"
    },
    {
        first_name: "Brendan",
        last_name: "Eich",
        description: "~",
        image_url: "brendaneich.jpeg"
    },
    {
        first_name: "Barbara",
        last_name: "Liskov",
        description: "~",
        image_url: "barbaraliskov.jpeg"
    },
    {
        first_name: "David",
        last_name: "Axmark",
        description: "~",
        image_url: "davidaxmark.jpeg"
    },
    {
        first_name: "David",
        last_name: "Knuth",
        description: "~",
        image_url: "davidknuth.jpeg"
    },
    {
        first_name: "Sergey",
        last_name: "Brin",
        description: "~",
        image_url: "sergeybrin.jpeg"
    }



])