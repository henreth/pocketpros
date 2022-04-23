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
        link: 'https://en.wikipedia.org/wiki/Vitalik_Buterin'
        image_url1: "vitalikbuterin.jpeg",
        title1: 'Ethereum Co-Founder',
        image_url2: "vitalikbuterin2.jpeg",
        title2: 'Computer Scientist',
        image_url3: "vitalikbuterin3.jpeg",
        title3: 'Ethereum Core Developer',
        image_url4: "vitalikbuterin4.jpeg",
        title4: 'Ethereum Co-Founder',
    },
    {
        first_name: "Katherine",
        last_name: "Johnson",
        link: 'https://en.wikipedia.org/wiki/Katherine_Johnson',
        image_url1: "katherinejohnson.jpeg",
        title1: 'Mathematician',
        image_url2: "katherinejohnson2.jpeg",
        title2: 'NASA Computer',
        image_url3: "katherinejohnson3.jpeg",
        title3: 'Orbital Mechanics',
        image_url4: "katherinejohnson4.jpeg",
        title4: 'Space Trajectory Calculator',
    },
    {
        first_name: "Alan",
        last_name: "Turing",
        link: 'https://en.wikipedia.org/wiki/Alan_Turing',
        image_url1: "alanturing.jpeg",
        title1: "Computer Scientist",
        image_url2: "alanturing.jpeg",
        title2: "Cryptanalyst",
        image_url3: "alanturing.jpeg",
        title3: "Mathematician",
        image_url4: "alanturing.jpeg",
        title4: "Logician",
    },
    {
        first_name: "Steve",
        last_name: "Jobs",
        link: 'https://en.wikipedia.org/wiki/Steve_Jobs'
        image_url1: "stevejobs.jpeg",
        title1: "Apple Co-Founder",
        image_url2: "stevejobs2.jpeg",
        title2: "Industrial Designer",
        image_url3: "stevejobs3.jpeg",
        title3: "Entrepreneur",
        image_url4: "stevejobs4.jpeg",
        title4: "Apple Innovator",
    },
    {
        first_name: "Bill",
        last_name: "Gates",
        link: 'https://en.wikipedia.org/wiki/Bill_Gates'
        image_url1: "billgates.jpeg",
        title1: "Microsoft Co-Founder",
        image_url2: "billgates2.jpeg",
        title2: "Software Engineer",
        image_url3: "billgates3.jpeg",
        title3: "Systems Designer",
        image_url4: "billgates4.jpeg",
        title4: "Entrepreneur",
    },
    {
        first_name: "Grace",
        last_name: "Hopper",
        link: 'https://en.wikipedia.org/wiki/Grace_Hopper'
        image_url1: "gracehopper.jpeg",
        title1: "Computer Scientist",
        image_url2: "gracehopper2.jpeg",
        title2: "Rear Admiral",
        image_url3: "gracehopper3.jpeg",
        title3: "Computer Scientist",
        image_url4: "gracehopper4.jpeg",
        title4: "Computer Scientist",
    },
    {
        first_name: "Joan",
        last_name: "Clarke",
        link: 'https://en.wikipedia.org/wiki/Joan_Clarke'
        image_url1: "joanclarke.jpeg",
    },
    {
        first_name: "Gavin",
        last_name: "Wood",
        link: 'https://en.wikipedia.org/wiki/Gavin_Wood'
        image_url1: "gavinwood.jpeg",
        title1: "Free-Trust Technologist"
        image_url2: "gavinwood2.jpeg",
        title2: "Computer Scientist",
        image_url3: "gavinwood3.jpeg",
        title3: "Open Source Advocate"
        image_url4: "gavinwood4.jpeg",
        title4: "Ethereum Co-Founder",
    },
    {
        first_name: "Mary",
        last_name: "Jackson",
        link: 'https://en.wikipedia.org/wiki/Mary_Jackson_(engineer)'
        image_url1: "maryjackson.jpeg",
    },
    {
        first_name: "Mary Kenneth",
        last_name: "Keller",
        link: 'https://en.wikipedia.org/wiki/Mary_Kenneth_Keller'
        image_url1: "marykennethkeller.jpeg",
    },
    {
        first_name: "Raj",
        last_name: "Reddy",
        link: 'https://en.wikipedia.org/wiki/Raj_Reddy'
        image_url1: "rajreddy.jpeg",
    },
    {
        first_name: "Hedy",
        last_name: "Lamarr",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
        image_url1: "hedylamarr.jpeg",
    },
    {
        first_name: "Margaret",
        last_name: "Hamilton",
        link: 'https://en.wikipedia.org/wiki/Margaret_Hamilton_(software_engineer)'
        image_url1: "margarethamilton.jpeg",
    },
    {
        first_name: "Mark",
        last_name: "Zuckerberg",
        link: 'https://en.wikipedia.org/wiki/Mark_Zuckerberg'
        image_url1: "markzuckerberg.jpeg",
    },
    {
        first_name: "Anita",
        last_name: "Borg",
        link: 'https://en.wikipedia.org/wiki/Anita_Borg'
        image_url1: "anitaborg.jpeg",
    },
    {
        first_name: "Larry",
        last_name: "Page",
        link: 'https://en.wikipedia.org/wiki/Larry_Page'
        image_url1: "larrypage.jpeg",
    },
    {
        first_name: "Yukihiro",
        last_name: "Matsumoto",
        link: 'https://en.wikipedia.org/wiki/Yukihiro_Matsumoto'
        image_url1: "yukihiromatsumoto.jpeg",
    },
    {
        first_name: "Jeff",
        last_name: "Bezos",
        link: 'https://en.wikipedia.org/wiki/Jeff_Bezos'
        image_url1: "jeffbezos.jpeg",
    },
    {
        first_name: "Annie",
        last_name: "Easley",
        link: 'https://en.wikipedia.org/wiki/Annie_Easley'
        image_url1: "annieeasley.png",
    },
    {
        first_name: "Ada",
        last_name: "Lovelace",
        link: 'https://en.wikipedia.org/wiki/Ada_Lovelace'
        image_url1: "adalovelace.jpeg",
    },
    {
        first_name: "Clarence",
        last_name: "Ellis",
        link: 'https://en.wikipedia.org/wiki/Clarence_Ellis_(computer_scientist)'
        image_url1: "clarenceellis.jpeg",
    },
    {
        first_name: "Tim",
        last_name: "Berners Lee",
        link: 'https://en.wikipedia.org/wiki/Tim_Berners-Lee'
        image_url1: "timbernerslee.jpeg",
    },
    {
        first_name: "John",
        last_name: "Von Neumann",
        link: 'https://en.wikipedia.org/wiki/John_von_Neumann'
        image_url1: "johnvonneumann.jpeg",
    },
    {
        first_name: "Steve",
        last_name: "Wozniak",
        link: 'https://en.wikipedia.org/wiki/Steve_Wozniak'
        image_url1: "stevewozniak.jpeg",
    },
    {
        first_name: "J.C.R.",
        last_name: "Licklider",
        link: 'https://en.wikipedia.org/wiki/J._C._R._Licklider'
        image_url1: "jcrlicklider.jpeg",
    },
    {
        first_name: "John",
        last_name: "McCarthy",
        link: 'https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist)'
        image_url1: "johnmccarthy.jpeg",
    },
    {
        first_name: "Stanislaw",
        last_name: "Ulam",
        link: 'https://en.wikipedia.org/wiki/Stanislaw_Ulam'
        image_url1: "stanislawulam.jpeg",
    },
    {
        first_name: "Heron",
        last_name: "of Alexandria",
        link: 'https://en.wikipedia.org/wiki/Hero_of_Alexandria'
        image_url1: "heronofalexandria.jpeg",
    },
    {
        first_name: "Guido",
        last_name: "Van Rossum",
        link: 'https://en.wikipedia.org/wiki/Guido_van_Rossum'
        image_url1: "guidovanrossum.jpeg",
    },
    {
        first_name: "John",
        last_name: "Tukey",
        link: 'https://en.wikipedia.org/wiki/John_Tukey'
        image_url1: "johnwtukey.jpeg",
    },
    {
        first_name: "Joseph Marie",
        last_name: "Jacquard",
        link: 'https://en.wikipedia.org/wiki/Joseph_Marie_Jacquard'
        image_url1: "josephmariejacquard.jpeg",
    },
    {
        first_name: "Charles",
        last_name: "Babbage",
        link: 'https://en.wikipedia.org/wiki/Charles_Babbageva'
        image_url1: "charlesbabbage.jpeg",
    },
    {
        first_name: "Dorothy",
        last_name: "Vaughan",
        link: 'https://en.wikipedia.org/wiki/Dorothy_Vaughan'
        image_url1: "dorothyvaughan.jpeg",
    },
    {
        first_name: "Tommy",
        last_name: "Flowers",
        link: 'https://en.wikipedia.org/wiki/Tommy_Flowers'
        image_url1: "tommyflowers.jpeg",
    },
    {
        first_name: "Linus",
        last_name: "Torvalds",
        link: 'https://en.wikipedia.org/wiki/Linus_Torvalds'
        image_url1: "linustorvalds.jpeg",
    },
    {
        first_name: "John",
        last_name: "Backus",
        link: 'https://en.wikipedia.org/wiki/John_Back'
        image_url1: "johnbackus.jpeg",
    },
    {
        first_name: "Douglas",
        last_name: "Crockford",
        link: 'https://en.wikipedia.org/wiki/Douglas_Crockford'
        image_url1: "douglascrockford.jpeg",
    },
    {
        first_name: "Miguel",
        last_name: "De Icaza",
        link: 'https://en.wikipedia.org/wiki/Miguel_de_Icaza'
        image_url1: "migueldeicaza.jpeg",
    },
    {
        first_name: "Carl",
        last_name: "Sassenrath",
        link: 'https://en.wikipedia.org/wiki/Carl_Sassenrath'
        image_url1: "carlsassenrath.jpeg",
    },
    {
        first_name: "Barbara",
        last_name: "Liskov",
        link: 'https://en.wikipedia.org/wiki/Barbara_Liskov'
        image_url1: "barbaraliskov.jpeg",
    },
    {
        first_name: "David",
        last_name: "Axmark",
        link: 'https://en.wikipedia.org/wiki/David_Axmark'
        image_url1: "davidaxmark.jpeg",
    },
    {
        first_name: "Donald",
        last_name: "Knuth",
        link: 'https://en.wikipedia.org/wiki/Donald_Knuth'
        image_url1: "donaldknuth.jpeg",
    },
    {
        first_name: "Sergey",
        last_name: "Brin",
        link: 'https://en.wikipedia.org/wiki/Sergey_Brin'
        image_url1: "sergeybrin.jpeg",
    },
    {
        first_name: "Elizabeth",
        last_name: "Feinler",
        link: 'https://en.wikipedia.org/wiki/Elizabeth_J._Feinler'
        image_url1: "elizabethfeinler.jpeg",
    },
    {
        first_name: "Alexey",
        last_name: "Pajitnov",
        link: 'https://en.wikipedia.org/wiki/Alexey_Pajitnov'
        image_url1: "alexeypajitnov.jpeg",
    },
    {
        first_name: "Andrew",
        last_name: "Ng",
        link: 'https://en.wikipedia.org/wiki/Andrew_Ng'
        image_url1: "andrewng.jpeg",
    },
    {
        first_name: "Demis",
        last_name: "Hassabis",
        link: 'https://en.wikipedia.org/wiki/Demis_Hassabis'
        image_url1: "demishassabis.jpeg",
    },
    {
        first_name: "Karen",
        last_name: "Spärck Jones",
        link: 'https://en.wikipedia.org/wiki/Karen_Sp%C3%A4rck_Jones'
        image_url1: "karensparckjones.jpeg",
    },
    {
        first_name: "Timnit",
        last_name: "Gebru",
        link: 'https://en.wikipedia.org/wiki/Timnit_Gebru'
        image_url1: "timnitgebru.jpeg",
    },
    {
        first_name: "Max",
        last_name: "Levchin",
        link: 'https://en.wikipedia.org/wiki/Max_Levchin'
        image_url1: "maxlevchin.jpeg",
    },
    {
        first_name: "Shafi",
        last_name: "Goldwasser",
        link: 'https://en.wikipedia.org/wiki/Shafi_Goldwasser'
        image_url1: "shafigoldwasser.jpeg",
    },
    {
        first_name: "Lisa",
        last_name: "Su",
        link: 'https://en.wikipedia.org/wiki/Lisa_Su'
        image_url1: "lisasu.png",
    },
    {
        first_name: "Sophie",
        last_name: "Wilson",
        link: 'https://en.wikipedia.org/wiki/Sophie_Wilson'
        image_url1: "sophiewilson.jpeg",
    },
    {
        first_name: "Vint",
        last_name: "Cerf",
        link: 'https://en.wikipedia.org/wiki/Vint_Cerf'
        image_url1: "vintcerf.jpeg",
    },
    {
        first_name: "Manuel",
        last_name: "Blum",
        link: 'https://en.wikipedia.org/wiki/Manuel_Blum'
        image_url1: "manuelblum.jpeg",
    },
    {
        first_name: "Frances",
        last_name: "Allen",
        link: 'https://en.wikipedia.org/wiki/Frances_Allen'
        image_url1: "francesallen.jpeg",
    },
    {
        first_name: "Edsger W.",
        last_name: "Dijkstra",
        link: 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra'
        image_url1: "edsgerwdijkstra.jpeg",
    },
    {
        first_name: "Kunihiko",
        last_name: "Fukushima",
        link: 'https://en.wikipedia.org/wiki/Kunihiko_Fukushima'
        image_url1: "kunihikofukushima.jpeg",
    },
    {
        first_name: "DJ",
        last_name: "Patil",
        link: 'https://en.wikipedia.org/wiki/DJ_Patil',
        image_url1: "djpatil.jpeg",
        title1: "Data Scientist",
        image_url2: "djpatil2.jpeg",
        title2: "Mathematician",
        image_url3: "djpatil3.jpeg",
        title3: "Computer Scientist",
        image_url4: "djpatil4.jpeg",
        title4: "Data Analyst",

    },
    {
        first_name: "Fei Fei",
        last_name: "Li",
        link: 'https://en.wikipedia.org/wiki/Fei-Fei_Li',
        image_url1: "feifeili.jpeg",
        title1: 'Automated Intelligence'
    },
    {
        first_name: "Ken",
        last_name: "Thompson",
        link: 'https://en.wikipedia.org/wiki/Ken_Thompson'
        image_url1: "kenthompson.jpeg",
    },
    {
        first_name: "Dennis",
        last_name: "Ritchie",
        link: 'https://en.wikipedia.org/wiki/Dennis_Ritchie'
        image_url1: "dennisritchie.jpeg",
    },
    {
        first_name: "Tony",
        last_name: "Hoare",
        link: 'https://en.wikipedia.org/wiki/Tony_Hoare'
        image_url1: "tonyhoare.jpeg",
    },
    {
        first_name: "Alan",
        last_name: "Kay",
        link: 'https://en.wikipedia.org/wiki/Alan_Kay'
        image_url1: "alankay.jpeg",
    },
    {
        first_name: "Andrew",
        last_name: "Yao",
        link: 'https://en.wikipedia.org/wiki/Andrew_Yao'
        image_url1: "andrewyao.jpeg",
    },
    {
        first_name: "Marvin",
        last_name: "Minsky",
        link: 'https://en.wikipedia.org/wiki/Marvin_Minsky'
        image_url1: "marvinminsky.jpeg",
    },
    {
        first_name: "Adi",
        last_name: "Shamir",
        link: 'https://en.wikipedia.org/wiki/Adi_Shamir'
        image_url1: "adishamir.jpeg",
    },
    {
        first_name: "Kurt",
        last_name: "Gödel",
        link: 'https://en.wikipedia.org/wiki/Kurt_G%C3%B6del'
        image_url1: "kurtgodel.jpeg",
    },
    {
        first_name: "Musa",
        last_name: "al-Khwarizmi",
        link: 'https://en.wikipedia.org/wiki/Muhammad_ibn_Musa_al-Khwarizmi',
        image_url1: "musaalkhwarizmi.jpeg",
        title1: 'Mathematician',
        image_url2: "musaalkhwarizmi.jpeg",
        title2: 'Mathematician',
        image_url3: "musaalkhwarizmi.jpeg",
        title3: 'Mathematician',
        image_url4: "musaalkhwarizmi.jpeg",
        title4: 'Mathematician',
    },
    {
        first_name: "Pāṇini",
        last_name: "",
        link: 'https://en.wikipedia.org/wiki/P%C4%81%E1%B9%87ini',
        image_url1: "panini.jpeg",
        title1: 'Grammarian',
        image_url2: "panini.jpeg",
        title2: 'Philologist',
        image_url3: "panini.jpeg",
        title3: 'Linguist',
        image_url4: "panini.jpeg",
        title4: 'Morphological Analyst'
    },
    {
        first_name: "Ismail",
        last_name: "al-Jazari",
        link: 'https://en.wikipedia.org/wiki/Ismail_al-Jazari',
        image_url1: "ismailaljazari.jpeg",
        title1: 'Mechanical Engineer',
        image_url2: "ismailaljazari2.jpeg",
        title2: 'Mathematician',
        image_url3: "ismailaljazari3.jpeg",
        title3: 'Machinery Architect',
        image_url4: "ismailaljazari.jpeg",
        title4: 'Polymath'
    },
    {
        first_name: "Susan L.",
        last_name: "Graham",
        link: 'https://en.wikipedia.org/wiki/Susan_L._Graham',
        image_url1: "susanlgraham.jpeg",
        title1: 'Computer Scientist',
        image_url2: "susanlgraham2.jpeg",
        title2: 'Mathematician',
        image_url3: "susanlgraham3.jpeg",
        title3: 'Systems Developer',
        image_url4: "susanlgraham4.jpeg",
        title4: 'Language Design',
    },
    {
        first_name: "Gottfried",
        last_name: "Leibniz",
        link: 'https://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz',
        image_url1: "gottfriedleibniz.jpeg",
        title1: 'Mathematician',
        image_url2: "gottfriedleibniz2.jpeg",
        title2: 'Philosopher',
        image_url3: "gottfriedleibniz3.jpeg",
        title3: 'Scientist',
        image_url4: "gottfriedleibniz4.jpeg",
        title4: 'Polymath'
    },
    {
        first_name: "Blaise",
        last_name: "Pascal",
        link: 'https://en.wikipedia.org/wiki/Blaise_Pascal',
        image_url1: "blaisepascal.jpeg",
        title1: 'Mathematician',
        image_url2: "blaisepascal2.jpeg",
        title2: 'Physicist',
        image_url3: "blaisepascal3.jpeg",
        title3: 'Philosopher',
        image_url4: "blaisepascal4.jpeg",
        title4: 'Mechanical Engineer'
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