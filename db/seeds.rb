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
        first_name: "Merlin",
        last_name: "The Wizard",
        username: "Merlin",
        password: "12345",
        last_log_in: Time.new,
        streak: 1,
        credits: 5000,
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
        last_name: "Gawain",
        username: "Gawain",
        password: "Gawain",
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
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Katherine",
        last_name: "Johnson",
        image_url: "katherinejohnson.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Alan",
        last_name: "Turing",
        image_url: "alanturing.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Steve",
        last_name: "Jobs",
        image_url: "stevejobs.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Bill",
        last_name: "Gates",
        image_url: "billgates.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Grace",
        last_name: "Hopper",
        image_url: "gracehopper.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Joan",
        last_name: "Clarke",
        image_url: "joanclarke.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Gavin",
        last_name: "Wood",
        image_url: "gavinwood.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Mary",
        last_name: "Jackson",
        image_url: "maryjackson.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Mary Kenneth",
        last_name: "Keller",
        image_url: "marykennethkeller.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Raj",
        last_name: "Reddy",
        image_url: "rajreddy.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Hedy",
        last_name: "Lamarr",
        image_url: "hedylamarr.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Margaret",
        last_name: "Hamilton",
        image_url: "margarethamilton.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Mark",
        last_name: "Zuckerberg",
        image_url: "markzuckerberg.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Anita",
        last_name: "Borg",
        image_url: "anitaborg.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Larry",
        last_name: "Page",
        image_url: "larrypage.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Yukihiro",
        last_name: "Matsumoto",
        image_url: "yukihiromatsumoto.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Jeff",
        last_name: "Bezos",
        image_url: "jeffbezos.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Annie",
        last_name: "Easley",
        image_url: "annieeasley.png",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Ada",
        last_name: "Lovelace",
        image_url: "adalovelace.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Clarence",
        last_name: "Ellis",
        image_url: "clarenceellis.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Tim",
        last_name: "Berners Lee",
        image_url: "timbernerslee.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "John",
        last_name: "Von Neumann",
        image_url: "johnvonneumann.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Steve",
        last_name: "Wozniak",
        image_url: "stevewozniak.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "J.C.R.",
        last_name: "Licklider",
        image_url: "jcrlicklider.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "John",
        last_name: "McCarthy",
        image_url: "johnmccarthy.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Stanislaw",
        last_name: "Ulam",
        image_url: "stanislawulam.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Heron",
        last_name: "of Alexandria",
        image_url: "heronofalexandria.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Guido",
        last_name: "Van Rossum",
        image_url: "guidovanrossum.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "John W.",
        last_name: "Tukey",
        image_url: "johnwtukey.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Joseph Marie",
        last_name: "Jacquard",
        image_url: "josephmariejacquard.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Charles",
        last_name: "Babbage",
        image_url: "charlesbabbage.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Dorothy",
        last_name: "Vaughan",
        image_url: "dorothyvaughan.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Tommy",
        last_name: "Flowers",
        image_url: "tommyflowers.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Linus",
        last_name: "Torvalds",
        image_url: "linustorvalds.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "John",
        last_name: "Backus",
        image_url: "johnbackus.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Douglas",
        last_name: "Crockford",
        image_url: "douglascrockford.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Miguel",
        last_name: "De Icaza",
        image_url: "migueldeicaza.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Carl",
        last_name: "Sassenrath",
        image_url: "carlsassenrath.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Barbara",
        last_name: "Liskov",
        image_url: "barbaraliskov.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "David",
        last_name: "Axmark",
        image_url: "davidaxmark.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "David",
        last_name: "Knuth",
        image_url: "davidknuth.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Sergey",
        last_name: "Brin",
        image_url: "sergeybrin.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Elizabeth",
        last_name: "Feinler",
        image_url: "elizabethfeinler.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Alexey",
        last_name: "Pajitnov",
        image_url: "alexeypajitnov.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Andrew",
        last_name: "Ng",
        image_url: "andrewng.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Demis",
        last_name: "Hassabis",
        image_url: "demishassabis.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Karen",
        last_name: "Sparck Jones",
        image_url: "karensparckjones.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Timnit",
        last_name: "Gebru",
        image_url: "timnitgebru.jpeg",
        link: 'https://en.wikipedia.org/wiki/Timnit_Gebru'
    },
    {
        first_name: "Max",
        last_name: "Levchin",
        image_url: "maxlevchin.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Shafi",
        last_name: "Goldwasser",
        image_url: "shafigoldwasser.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Lisa",
        last_name: "Su",
        image_url: "lisasu.png",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Sophie",
        last_name: "Wilson",
        image_url: "sophiewilson.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Vint",
        last_name: "Cerf",
        image_url: "vintcerf.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Manuel",
        last_name: "Blum",
        image_url: "manuelblum.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Frances",
        last_name: "Allen",
        image_url: "francesallen.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Edsger W.",
        last_name: "Dijkstra",
        image_url: "edsgerwdijkstra.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Kunihiko",
        last_name: "Fukushima",
        image_url: "kunihikofukushima.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "DJ",
        last_name: "Patil",
        image_url: "djpatil.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Fei Fei",
        last_name: "Li",
        image_url: "feifeili.jpeg",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
    },
    {
        first_name: "Ken",
        last_name: "Thompson",
        image_url: "kenthompson.jpeg",
        link: 'https://en.wikipedia.org/wiki/Ken_Thompson'
    },
    {
        first_name: "Dennis",
        last_name: "Ritchie",
        image_url: "dennisritchie.jpeg",
        link: 'https://en.wikipedia.org/wiki/Dennis_Ritchie'
    },
    {
        first_name: "Tony",
        last_name: "Hoare",
        image_url: "tonyhoare.jpeg",
        link: 'https://en.wikipedia.org/wiki/Tony_Hoare'
    },
    {
        first_name: "Alan",
        last_name: "Kay",
        image_url: "alankay.jpeg",
        link: 'https://en.wikipedia.org/wiki/Alan_Kay'
    },
    {
        first_name: "Andrew",
        last_name: "Yao",
        image_url: "andrewyao.jpeg",
        link: 'https://en.wikipedia.org/wiki/Andrew_Yao'
    },
    {
        first_name: "Marvin",
        last_name: "Minsky",
        image_url: "marvinminsky.jpeg",
        link: 'https://en.wikipedia.org/wiki/Marvin_Minsky'
    },
    {
        first_name: "Adi",
        last_name: "Shamir",
        image_url: "adishamir.jpeg",
        link: 'https://en.wikipedia.org/wiki/Adi_Shamir'
    },
    {
        first_name: "Kurt",
        last_name: "Gödel",
        image_url: "kurtgodel.jpeg",
        link: 'https://en.wikipedia.org/wiki/Kurt_G%C3%B6del'
    },
])

puts 'Seeding Cards + Transactions'

User.all[2,User.all.size].each{|user| 
    60.times {|i|
        cardRarity = rand(4)
        Card.create!(user_id:user.id, character_id: Character.all.sample.id, unique_id: rand(9).to_s + 'x' + SecureRandom.alphanumeric(10), for_sale: false, rarity:cardRarity)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: user.id)
        newFrom = User.all[2,User.all.size].sample
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
        # Card.all[Card.all.size-1].update!(user_id: newFrom.id)
        # # 1
        # newTo = User.all.sample
        # if cardRarity == 0
        #     salePrice = rand(20) + 20
        # elsif cardRarity == 1
        #     salePrice = rand(60) + 60
        # elsif cardRarity == 2 
        #     salePrice = rand(120) + 150
        # elsif cardRarity == 3
        #     salePrice = rand(150) + 300
        # end
        # Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: newFrom, to_id: newTo, sale_price: salePrice)
        # newFrom = newTo
        # newFrom = newTo
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
        if randNum > 85
            Card.all[Card.all.size-1].update!(for_sale: true, sale_price: salePrice)
        end

    }
}

puts 'Seeding Complete 🚀'