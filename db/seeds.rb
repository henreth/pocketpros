puts 'Removing Previous Data'
User.destroy_all
Character.destroy_all
Card.destroy_all
Transaction.destroy_all

puts "Seeding Users"
User.create!([
    {
        first_name: "King",
        last_name: "Arthur",
        username: "excalibur",
        password: "camelot",
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        last_log_in: Time.new,
        streak: 1,
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
        image_url: "vitalikbuterin.jpeg",
    },
    {
        first_name: "Katherine",
        last_name: "Johnson",
        image_url: "katherinejohnson.jpeg",
    },
    {
        first_name: "Alan",
        last_name: "Turing",
        image_url: "alanturing.jpeg",
    },
    {
        first_name: "Steve",
        last_name: "Jobs",
        image_url: "stevejobs.jpeg",
    },
    {
        first_name: "Bill",
        last_name: "Gates",
        image_url: "billgates.jpeg",
    },
    {
        first_name: "Grace",
        last_name: "Hopper",
        image_url: "gracehopper.jpeg",
    },
    {
        first_name: "Joan",
        last_name: "Clarke",
        image_url: "joanclarke.jpeg",
    },
    {
        first_name: "Gavin",
        last_name: "Wood",
        image_url: "gavinwood.jpeg",
    },
    {
        first_name: "Mary",
        last_name: "Jackson",
        image_url: "maryjackson.jpeg",
    },
    {
        first_name: "Mary Kenneth",
        last_name: "Keller",
        image_url: "marykennethkeller.jpeg",
    },
    {
        first_name: "Raj",
        last_name: "Reddy",
        image_url: "rajreddy.jpeg",
    },
    {
        first_name: "Hedy",
        last_name: "Lamarr",
        image_url: "hedylamarr.jpeg",
    },
    {
        first_name: "Margaret",
        last_name: "Hamilton",
        image_url: "margarethamilton.jpeg",
    },
    {
        first_name: "Mark",
        last_name: "Zuckerberg",
        image_url: "markzuckerberg.jpeg",
    },
    {
        first_name: "Anita",
        last_name: "Borg",
        image_url: "anitaborg.jpeg",
    },
    {
        first_name: "Larry",
        last_name: "Page",
        image_url: "larrypage.jpeg",
    },
    {
        first_name: "Yukihiro",
        last_name: "Matsumoto",
        image_url: "yukihiromatsumoto.jpeg",
    },
    {
        first_name: "Jeff",
        last_name: "Bezos",
        image_url: "jeffbezos.jpeg",
    },
    {
        first_name: "Annie",
        last_name: "Easley",
        image_url: "annieeasley.jpeg",
    },
    {
        first_name: "Ada",
        last_name: "Lovelace",
        image_url: "adalovelace.jpeg",
    },
    {
        first_name: "Clarence",
        last_name: "Ellis",
        image_url: "clarenceellis.jpeg",
    },
    {
        first_name: "Tim",
        last_name: "Berners Lee",
        image_url: "timbernerslee.jpeg",
    },
    {
        first_name: "John",
        last_name: "Von Neumann",
        image_url: "johnvonneumann.jpeg",
    },
    {
        first_name: "Steve",
        last_name: "Wozniak",
        image_url: "stevewozniak.jpeg",
    },
    {
        first_name: "J.C.R.",
        last_name: "Licklider",
        image_url: "jcrlicklider.jpeg",
    },
    {
        first_name: "John",
        last_name: "McCarthy",
        image_url: "johnmccarthy.jpeg",
    },
    {
        first_name: "Stanislaw",
        last_name: "Ulam",
        image_url: "stanislawulam.jpeg",
    },
    {
        first_name: "Heron",
        last_name: "of Alexandria",
        image_url: "heronofalexandria.jpeg"
    },
    {
        first_name: "Guido",
        last_name: "Van Rossum",
        image_url: "guidovanrossum.jpeg"
    },
    {
        first_name: "John W.",
        last_name: "Tukey",
        image_url: "johnwtukey.jpeg"
    },
    {
        first_name: "Joseph Marie",
        last_name: "Jacquard",
        image_url: "josephmariejacquard.jpeg"
    },
    {
        first_name: "Charles",
        last_name: "Babbage",
        image_url: "charlesbabbage.jpeg"
    },
    {
        first_name: "Dorothy",
        last_name: "Vaughan",
        image_url: "dorothyvaughan.jpeg"
    },
    {
        first_name: "Tommy",
        last_name: "Flowers",
        image_url: "tommyflowers.jpeg"
    },
    {
        first_name: "Linus",
        last_name: "Torvalds",
        image_url: "linustorvalds.jpeg"
    },
    {
        first_name: "John",
        last_name: "Backus",
        image_url: "johnbackus.jpeg"
    },
    {
        first_name: "Douglas",
        last_name: "Crockford",
        image_url: "douglascrockford.jpeg"
    },
    {
        first_name: "Miguel",
        last_name: "De Icaza",
        image_url: "migueldeicaza.jpeg"
    },
    {
        first_name: "Carl",
        last_name: "Sassenrath",
        image_url: "carlsassenrath.jpeg"
    },
    {
        first_name: "Barbara",
        last_name: "Liskov",
        image_url: "barbaraliskov.jpeg"
    },
    {
        first_name: "David",
        last_name: "Axmark",
        image_url: "davidaxmark.jpeg"
    },
    {
        first_name: "David",
        last_name: "Knuth",
        image_url: "davidknuth.jpeg"
    },
    {
        first_name: "Sergey",
        last_name: "Brin",
        image_url: "sergeybrin.jpeg"
    },
    {
        first_name: "Elizabeth",
        last_name: "Feinler",
        image_url: "elizabethfeinler.jpeg"
    },
    {
        first_name: "Alexey",
        last_name: "Pajitnov",
        image_url: "alexeypajitnov.jpeg"
    },
    {
        first_name: "Andrew",
        last_name: "Ng",
        image_url: "andrewng.jpeg"
    },
    {
        first_name: "Demis",
        last_name: "Hassabis",
        image_url: "demishassabis.jpeg"
    },
    {
        first_name: "Karen",
        last_name: "Sparck Jones",
        image_url: "karensparckjones.jpeg"
    },
    {
        first_name: "Karen",
        last_name: "Sparck Jones",
        image_url: "karensparckjones.jpeg"
    },
    {
        first_name: "Max",
        last_name: "Levchin",
        image_url: "maxlevchin.jpeg"
    },
    {
        first_name: "Shafi",
        last_name: "Goldwasser",
        image_url: "shafigoldwasser.jpeg"
    },
    {
        first_name: "Lisa",
        last_name: "Su",
        image_url: "lisasu.jpeg"
    },
    {
        first_name: "Sophie",
        last_name: "Wilson",
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
        salePrice = rand(50) + 50
        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(250) + 300
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: user.id, to_id: newFrom.id, sale_price: salePrice)
        # 1
        newTo = User.all.sample
        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(150) + 300
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom, to_id: newTo, sale_price: salePrice)
        newFrom = newTo
        # 2
        newTo = User.all.sample
        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(150) + 300
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom, to_id: newTo, sale_price: salePrice)
        newFrom = newTo
        # 2
        newTo = User.all.sample
        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(150) + 300
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom, to_id: newTo, sale_price: salePrice)
        newFrom = newTo
        # 3
        newTo = User.all.sample
        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(150) + 300
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom, to_id: newTo, sale_price: salePrice)
        newFrom = newTo
        # 4
        newTo = User.all.sample
        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(150) + 300
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom, to_id: newTo, sale_price: salePrice)
        newFrom = newTo
        # 5
        newTo = User.all.sample
        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(150) + 300
        end
        Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom, to_id: newTo, sale_price: salePrice)
        newFrom = newTo
        # 6.times{|i|
        #     newTo = User.all.sample
        #     if cardRarity == 0
        #         salePrice = rand(20) + 5
        #     elsif cardRarity == 1
        #         salePrice = rand(40) + 25
        #     elsif cardRarity == 2 
        #         salePrice = rand(60) + 60
        #     elsif cardRarity == 3
        #         salePrice = rand(100) + 60
        #     end
        #     Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: User.all.sample, to_id: newTo, sale_price: salePrice)
        #     newFrom = newTo
        # }

        if cardRarity == 0
            salePrice = rand(20) + 20
        elsif cardRarity == 1
            salePrice = rand(60) + 60
        elsif cardRarity == 2 
            salePrice = rand(120) + 150
        elsif cardRarity == 3
            salePrice = rand(150) + 300
        end


        randNum = rand() * 100
        if randNum > 70
            Card.all[Card.all.size-1].update!(for_sale: true, sale_price: salePrice)
        end

    }
}

puts 'Seeding Complete 🚀'