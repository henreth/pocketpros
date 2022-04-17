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
    },
    {
        first_name: "Sir",
        last_name: "Galahad",
        username: "galahad",
        password: "galahad",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Lancelot",
        username: "lancelot",
        password: "lancelot",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Percival",
        username: "Percival",
        password: "Percival",
        credits: 5000,
        packs: {
            "total": 30,
            "booster":5,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Tristan",
        username: "Tristan",
        password: "Tristan",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Bedivere",
        username: "Bedivere",
        password: "Bedivere",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Kay",
        username: "Kay",
        password: "Kay",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Degore",
        username: "Degore",
        password: "Degore",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Bors",
        username: "Bors",
        password: "Bors",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Brunor",
        username: "Brunor",
        password: "Brunor",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
        }
    },
    {
        first_name: "Sir",
        last_name: "Hector",
        username: "Hector",
        password: "Hector",
        credits: 5000,
        packs: {
            "total": 25,
            "booster":0,
            "regular":5,
            "pro":5,
            "max":5,
            "ultra":5,
            "studio":5
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
        last_name: "De Icaza",
        description: "~",
        image_url: "migueldeicaza.jpeg"
    },
    {
        first_name: "Carl",
        last_name: "Sassenrath",
        description: "~",
        image_url: "carlsassenrath.jpeg"
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
    },
    {
        first_name: "Elizabeth",
        last_name: "Feinler",
        description: "~",
        image_url: "elizabethfeinler.jpeg"
    },
    {
        first_name: "Alexey",
        last_name: "Pajitnov",
        description: "~",
        image_url: "alexeypajitnov.jpeg"
    },
    {
        first_name: "Andrew",
        last_name: "Ng",
        description: "~",
        image_url: "andrewng.jpeg"
    },
    {
        first_name: "Demis",
        last_name: "Hassabis",
        description: "~",
        image_url: "demishassabis.jpeg"
    },
    {
        first_name: "Karen",
        last_name: "Sparck Jones",
        description: "~",
        image_url: "karensparckjones.jpeg"
    },
    {
        first_name: "Karen",
        last_name: "Sparck Jones",
        description: "~",
        image_url: "karensparckjones.jpeg"
    },
    {
        first_name: "Max",
        last_name: "Levchin",
        description: "~",
        image_url: "maxlevchin.jpeg"
    },
    {
        first_name: "Shafi",
        last_name: "Goldwasser",
        description: "~",
        image_url: "shafigoldwasser.jpeg"
    },
    {
        first_name: "Lisa",
        last_name: "Su",
        description: "~",
        image_url: "lisasu.jpeg"
    },
    {
        first_name: "Sophie",
        last_name: "Wilson",
        description: "~",
        image_url: "sophiewilson.jpeg"
    },
])

puts 'Seeding Cards + Transactions'


User.all[2,User.all.size].each{|user| 
    60.times {|i|
        cardRarity = rand(4)
        Card.create!(user_id:user.id, character_id: Character.all.sample.id, unique_id: rand(9).to_s + 'x' + SecureRandom.alphanumeric(10), for_sale: false, rarity:cardRarity)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: user.id)
        newFrom = User.all.sample
        salePrice = 1
        if cardRarity == 0
            salePrice = rand(20) + 5
        elsif cardRarity == 1
            salePrice = rand(40) + 25
        elsif cardRarity == 2 
            salePrice = rand(60) + 80
        elsif cardRarity == 3
            sale_price = rand(100) + 150
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: newFrom.id, sale_price: salePrice)
        6.times{|i|
            newTo = User.all.sample
            if cardRarity == 0
                salePrice = rand(20) + 5
            elsif cardRarity == 1
                salePrice = rand(40) + 25
            elsif cardRarity == 2 
                salePrice = rand(60) + 60
            elsif cardRarity == 3
                sale_price = rand(100) + 60
            end
            Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom.id, to_id: newTo,sale_price: salePrice)
        }

        randNum = rand() * 100
        if randNum > 50
            Card.all[Card.all.size-1].update!(for_sale: true, sale_price: rand(150))
        end

    }
}