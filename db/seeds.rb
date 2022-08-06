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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
        password: SecureRandom.base58,
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
],)

puts "Seeding Characters"

Character.create!([
    {
        first_name: "Vitalik",
        last_name: "Buterin",
        link: 'https://en.wikipedia.org/wiki/Vitalik_Buterin',
        image: [ "vitalikbuterin.jpeg",
                    "vitalikbuterin.jpeg",
                    "vitalikbuterin2.jpeg",
                     "vitalikbuterin3.jpeg",
        ],
        title: [ 'Ethereum Co-Founder',
         'Decentralized Computing',
        'Ethereum Core Developer',
        'Crypto-Economics',
    ],
    },
    {
        first_name: "Katherine",
        last_name: "Johnson",
        link: 'https://en.wikipedia.org/wiki/Katherine_Johnson',
        image: [ "katherinejohnson.jpeg",
                    "katherinejohnson2.jpeg",
                    "katherinejohnson3.jpeg",
                     "katherinejohnson4.jpeg",
        ],
        title: [ 'Mathematician',
         'NASA Computer',
        'Orbital Mechanics',
         'Space Trajectory Calculator',
    ],
    },
    {
        first_name: "Alan",
        last_name: "Turing",
        link: 'https://en.wikipedia.org/wiki/Alan_Turing',
        image: [ "alanturing.jpeg",
                    "alanturing.jpeg",
                    "alanturing3.jpeg",
                     "alanturing4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Cryptanalyst",
        "Mathematician",
         "Logician",
    ],
    },
    {
        first_name: "Steve",
        last_name: "Jobs",
        link: 'https://en.wikipedia.org/wiki/Steve_Jobs',
        image: [ "stevejobs.jpeg",
                    "stevejobs2.jpeg",
                    "stevejobs3.jpeg",
                     "stevejobs4.jpeg",
        ],
        title: [ "Apple Co-Founder",
        "Industrial Designer",
        "Entrepreneur",
        "Personal Devices",
    ],
    },
    {
        first_name: "Bill",
        last_name: "Gates",
        link: 'https://en.wikipedia.org/wiki/Bill_Gates',
        image: [ "billgates.jpeg",
                    "billgates2.jpeg",
                    "billgates3.jpeg",
                     "billgates4.jpeg",
        ],
        title: [ "Microsoft Co-Founder",
         "Software Engineer",
        "Systems Designer",
         "Entrepreneur",
    ],
    },
    {
        first_name: "Grace",
        last_name: "Hopper",
        link: 'https://en.wikipedia.org/wiki/Grace_Hopper',
        image: [ "gracehopper.jpeg",
                    "gracehopper2.jpeg",
                    "gracehopper3.jpeg",
                     "gracehopper4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Rear Admiral",
        "Compilation Innovator",
         "Mathematician",
    ],
    },
    {
        first_name: "Joan",
        last_name: "Clarke",
        link: 'https://en.wikipedia.org/wiki/Joan_Clarke',
        image: [ "joanclarke.jpeg",
                    "joanclarke.jpeg",
                    "joanclarke.jpeg",
                     "joanclarke.jpeg",
        ],
        title: [ "Cryptanalyst",
         "Numismatist",
        "Codebreaker",
         "Mathematician",
    ],
    },
    {
        first_name: "Gavin",
        last_name: "Wood",
        link: 'https://en.wikipedia.org/wiki/Gavin_Wood',
        image: [ "gavinwood.jpeg",
                    "gavinwood2.jpeg",
                    "gavinwood3.jpeg",
                     "gavinwood4.jpeg",
        ],
        title: [ "Free-Trust Technologist",
         "Computer Scientist",
        "Open Source Advocate",
         "Ethereum Co-Founder",
    ],
    },
    {
        first_name: "Mary",
        last_name: "Jackson",
        link: 'https://en.wikipedia.org/wiki/Mary_Jackson_(engineer)',
        image: [ "maryjackson.jpeg",
                    "maryjackson2.jpeg",
                    "maryjackson3.jpeg",
                     "maryjackson4.jpeg",
        ],
        title: [ "Mathematician",
         "Aerospace Engineer",
        "Aeronautical Engineer",
         "Aerospace Scientist",
    ],
    },
    {
        first_name: "Mary Kenneth",
        last_name: "Keller",
        link: 'https://en.wikipedia.org/wiki/Mary_Kenneth_Keller',
        image: [ "marykennethkeller.jpeg",
                    "marykennethkeller2.jpeg",
                    "marykennethkeller3.jpeg",
                     "marykennethkeller4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Religious Sister",
        "Mathematician",
         "Physicist",
    ],
    },
    {
        first_name: "Raj",
        last_name: "Reddy",
        link: 'https://en.wikipedia.org/wiki/Raj_Reddy',
        image: [ "rajreddy.jpeg",
                    "rajreddy.jpeg",
                    "rajreddy2.jpeg",
                     "rajreddy3.jpeg",
        ],
        title: [ "Computer Scientist",
         "Artifical Intelligence",
        "Machine Learning",
         "Speech Recognition",
    ],
    },
    {
        first_name: "Hedy",
        last_name: "Lamarr",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr',
        image: [ "hedylamarr.jpeg",
                    "hedylamarr2.jpeg",
                    "hedylamarr3.jpeg",
                     "hedylamarr4.jpeg",
        ],
        title: [ "Frequency Hopping",
         "Radio Guidance",
        "Actress",
         "Spread Spectrum",
    ],
    },
    {
        first_name: "Margaret",
        last_name: "Hamilton",
        link: 'https://en.wikipedia.org/wiki/Margaret_Hamilton_(software_engineer)',
        image: [ "margarethamilton.jpeg",
                    "margarethamilton2.jpeg",
                    "margarethamilton3.jpeg",
                     "margarethamilton4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Software Engineer",
        "Systems Engineer",
         "NASA Flight Engineer",
    ],
    },
    {
        first_name: "Mark",
        last_name: "Zuckerberg",
        link: 'https://en.wikipedia.org/wiki/Mark_Zuckerberg',
        image: [ "markzuckerberg.jpeg",
                    "markzuckerberg2.jpeg",
                    "markzuckerberg3.jpeg",
                     "markzuckerberg4.jpeg",
        ],
        title: [ "Facebook Co-Founder",
         "Software Engineer",
        "Social Networking",
         "Entrepreneur",
    ],
    },
    {
        first_name: "Anita",
        last_name: "Borg",
        link: 'https://en.wikipedia.org/wiki/Anita_Borg',
        image: [ "anitaborg.jpeg",
                    "anitaborg2.jpeg",
                    "anitaborg3.jpeg",
                     "anitaborg4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Systems Design",
        "Operating Systems",
         "Software Developer",
    ],
    },
    {
        first_name: "Larry",
        last_name: "Page",
        link: 'https://en.wikipedia.org/wiki/Larry_Page',
        image: [ "larrypage.jpeg",
                    "larrypage2.jpeg",
                    "larrypage3.jpeg",
                     "larrypage4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Google Co-Founder",
        "Search Algorithms",
         "Entrepreneur",
    ],
    },
    {
        first_name: "Yukihiro",
        last_name: "Matsumoto",
        link: 'https://en.wikipedia.org/wiki/Yukihiro_Matsumoto',
        image: [ "yukihiromatsumoto.jpeg",
                    "yukihiromatsumoto2.jpeg",
                    "yukihiromatsumoto3.jpeg",
                     "yukihiromatsumoto4.jpeg",
        ],
        title: [ "Ruby Developer",
         "Computer Scientist",
        "Language Programmer",
         "Open Source Advocate",
    ],
    },
    {
        first_name: "Jeff",
        last_name: "Bezos",
        link: 'https://en.wikipedia.org/wiki/Jeff_Bezos',
        image: [ "jeffbezos.jpeg",
                    "jeffbezos2.jpeg",
                    "jeffbezos3.jpeg",
                     "jeffbezos4.jpeg",
        ],
        title: [ "Software Engineer",
         "Computer Engineer",
        "E-Commerce",
         "Entrepreneur",
    ],
    },
    {
        first_name: "Annie",
        last_name: "Easley",
        link: 'https://en.wikipedia.org/wiki/Annie_Easley',
        image: [ "annieeasley.jpeg",
                    "annieeasley2.jpeg",
                    "annieeasley3.jpeg",
                     "annieeasley4.jpeg",
        ],
        title: [ "Rocket Scientist",
         "Computer Scientist",
        "Mathematician",
         "Software Developer",
    ],
    },
    {
        first_name: "Ada",
        last_name: "Lovelace",
        link: 'https://en.wikipedia.org/wiki/Ada_Lovelace',
        image: [ "adalovelace.jpeg",
                    "adalovelace2.jpeg",
                    "adalovelace3.jpeg",
                     "adalovelace4.jpeg",
        ],
        title: [ "Mathematician",
         "Tech Visionary",
        "Poetical Science",
         "Metaphysician",
    ],
    },
    {
        first_name: "Clarence",
        last_name: "Ellis",
        link: 'https://en.wikipedia.org/wiki/Clarence_Ellis_(computer_scientist)',
        image: [ "clarenceellis.jpeg",
                    "clarenceellis.jpeg",
                    "clarenceellis.jpeg",
                     "clarenceellis.jpeg",
        ],
        title: [ "Computer Scientist",
         "Software Engineer",
        "Cognitive Science",
         "Simultaneous Editing",
    ],
    },
    {
        first_name: "Tim",
        last_name: "Berners Lee",
        link: 'https://en.wikipedia.org/wiki/Tim_Berners-Lee',
        image: [ "timbernerslee.jpeg",
                    "timbernerslee2.jpeg",
                    "timbernerslee3.jpeg",
                     "timbernerslee4.jpeg",
        ],
        title: [ "Computer Scientist",
         "World Wide Web",
        "Information Management",
         "Telecommunications",
    ],
    },
    {
        first_name: "John",
        last_name: "Von Neumann",
        link: 'https://en.wikipedia.org/wiki/John_von_Neumann',
        image: [ "johnvonneumann.jpeg",
                    "johnvonneumann2.jpeg",
                    "johnvonneumann3.jpeg",
                     "johnvonneumann4.jpeg",
        ],
        title: [ "Mathematician",
         "Physicist",
        "Computer Scientist",
         "Polymath",
    ],
    },
    {
        first_name: "Steve",
        last_name: "Wozniak",
        link: 'https://en.wikipedia.org/wiki/Steve_Wozniak',
        image: [ "stevewozniak.jpeg",
                    "stevewozniak2.jpeg",
                    "stevewozniak3.jpeg",
                     "stevewozniak4.jpeg",
        ],
        title: [ "Computer Programmer",
         "Apple Co-Founder",
        "Electronics Engineer",
         "Microcomputing",
    ],
    },
    {
        first_name: "J.C.R.",
        last_name: "Licklider",
        link: 'https://en.wikipedia.org/wiki/J._C._R._Licklider',
        image: [ "jcrlicklider.jpeg",
                    "jcrlicklider.jpeg",
                    "jcrlicklider2.jpeg",
                     "jcrlicklider3.jpeg",
        ],
        title: [ "Computer Scientist",
         "Psychologist",
        "Interactive Computing",
         "Intergalactic Computer Network",
    ],
    },
    {
        first_name: "John",
        last_name: "McCarthy",
        link: 'https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist)',
        image: [ "johnmccarthy.jpeg",
                    "johnmccarthy2.jpeg",
                    "johnmccarthy3.jpeg",
                     "johnmccarthy4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Cognitive Scientist",
        "Artifical Intelligence",
         "Language Developer",
    ],
    },
    {
        first_name: "Stanisław",
        last_name: "Ulam",
        link: 'https://en.wikipedia.org/wiki/Stanislaw_Ulam',
        image: [ "stanislawulam.jpeg",
                    "stanislawulam2.jpeg",
                    "stanislawulam3.jpeg",
                     "stanislawulam4.jpeg",
        ],
        title: [ "Mathematician",
         "Monte Carlo Methods",
        "Physicist",
         "Ergodic Theory",
    ],
    },
    {
        first_name: "Hero",
        last_name: "of Alexandria",
        link: 'https://en.wikipedia.org/wiki/Hero_of_Alexandria',
        image: [ "heronofalexandria.jpeg",
                    "heronofalexandria.jpeg",
                    "heronofalexandria.jpeg",
                     "heronofalexandria.jpeg",
        ],
        title: [ "Mathematician",
         "Physicist",
        "Mechanical Engineer",
         "Heron's Formula",
    ],
    },
    {
        first_name: "Guido",
        last_name: "Van Rossum",
        link: 'https://en.wikipedia.org/wiki/Guido_van_Rossum',
        image: [ "guidovanrossum.jpeg",
                    "guidovanrossum2.jpeg",
                    "guidovanrossum3.jpeg",
                     "guidovanrossum4.jpeg",
        ],
        title: [ "Python Developer",
         "Computer Scientist",
        "Software Engineer",
         "Language Design",
    ],
    },
    {
        first_name: "John",
        last_name: "Tukey",
        link: 'https://en.wikipedia.org/wiki/John_Tukey',
        image: [ "johnwtukey.jpeg",
                    "johnwtukey2.jpeg",
                    "johnwtukey3.jpeg",
                     "johnwtukey4.jpeg",
        ],
        title: [ "Mathematician",
         "Statistician",
        "Fast Fourier Transform",
         "Exploratory Data Analysis",
    ],
    },
    {
        first_name: "Joseph Marie",
        last_name: "Jacquard",
        link: 'https://en.wikipedia.org/wiki/Joseph_Marie_Jacquard',
        image: [ "josephmariejacquard.jpeg",
                    "josephmariejacquard2.jpeg",
                    "josephmariejacquard3.jpeg",
                     "josephmariejacquard4.jpeg",
        ],
        title: [ "Weaver",
         "Merchant",
        "Mechanical Engineer",
         "Programmable Loom",
    ],
    },
    {
        first_name: "Charles",
        last_name: "Babbage",
        link: 'https://en.wikipedia.org/wiki/Charles_Babbage',
        image: [ "charlesbabbage.jpeg",
                    "charlesbabbage2.jpeg",
                    "charlesbabbage3.jpeg",
                     "charlesbabbage4.jpeg",
        ],
        title: [ "Mathematician",
         "Mechanical Engineer",
        "Difference Engine",
         "Analytical Engine",
    ],
    },
    {
        first_name: "Dorothy",
        last_name: "Vaughan",
        link: 'https://en.wikipedia.org/wiki/Dorothy_Vaughan',
        image: [ "dorothyvaughan.jpeg",
                    "dorothyvaughan.jpeg",
                    "dorothyvaughan2.jpeg",
                     "dorothyvaughan2.jpeg",
        ],
        title: [ "Mathematician",
         "NASA Computer",
        "Computer Programmer",
         "Flight Mechanics",
    ],
    },
    {
        first_name: "Tommy",
        last_name: "Flowers",
        link: 'https://en.wikipedia.org/wiki/Tommy_Flowers',
        image: [ "tommyflowers.jpeg",
                    "tommyflowers2.jpeg",
                    "tommyflowers3.jpeg",
                     "tommyflowers4.jpeg",
        ],
        title: [ "Computer Engineer",
         "Codebreaker",
        "Cryptanalyst",
         "Collossus",
    ],
    },
    {
        first_name: "Linus",
        last_name: "Torvalds",
        link: 'https://en.wikipedia.org/wiki/Linus_Torvalds',
        image: [ "linustorvalds.jpeg",
                    "linustorvalds2.jpeg",
                    "linustorvalds2.jpeg",
                     "linustorvalds.jpeg",
        ],
        title: [ "Linux Developer",
         "Software Engineer",
        "Git Version Control",
         "Open Source Advocate",
    ],
    },
    {
        first_name: "John",
        last_name: "Backus",
        link: 'https://en.wikipedia.org/wiki/John_Backus',
        image: [ "johnbackus.jpeg",
                    "johnbackus.jpeg",
                    "johnbackus.jpeg",
                     "johnbackus.jpeg",
        ],
        title: [ "Computer Scientist",
         "FORTRAN",
        "Language Design",
         "Backus-Naur Form",
    ],
    },
    {
        first_name: "Douglas",
        last_name: "Crockford",
        link: 'https://en.wikipedia.org/wiki/Douglas_Crockford',
        image: [ "douglascrockford.jpeg",
                    "douglascrockford2.jpeg",
                    "douglascrockford3.jpeg",
                     "douglascrockford4.jpeg",
        ],
        title: [ "Computer Scientist",
         "JSON",
        "Javascript Developer",
         "Language Design",
    ],
    },
    {
        first_name: "Miguel",
        last_name: "De Icaza",
        link: 'https://en.wikipedia.org/wiki/Miguel_de_Icaza',
        image: [ "migueldeicaza.jpeg",
                    "migueldeicaza2.jpeg",
                    "migueldeicaza3.jpeg",
                     "migueldeicaza4.jpeg",
        ],
        title: [ "Software Developer",
         "Open Source Advocate",
        "Operating Systems",
         "Frameworks",
    ],
    },
    {
        first_name: "Carl",
        last_name: "Sassenrath",
        link: 'https://en.wikipedia.org/wiki/Carl_Sassenrath',
        image: [ "carlsassenrath.jpeg",
                    "carlsassenrath.jpeg",
                    "carlsassenrath.jpeg",
                     "carlsassenrath.jpeg",
        ],
        title: [ "Software Engineer",
         "Operating Systems",
        "Language Design",
         "Computational Multitasking",
    ],
    },
    {
        first_name: "Barbara",
        last_name: "Liskov",
        link: 'https://en.wikipedia.org/wiki/Barbara_Liskov',
        image: [ "barbaraliskov.jpeg",
                    "barbaraliskov.jpeg",
                    "barbaraliskov2.jpeg",
                     "barbaraliskov2.jpeg",
        ],
        title: [ "Computer Scientist",
         "Distributed Computing",
        "Language Design",
         "Type Theory",
    ],
    },
    {
        first_name: "David",
        last_name: "Axmark",
        link: 'https://en.wikipedia.org/wiki/David_Axmark',
        image: [ "davidaxmark.jpeg",
                    "davidaxmark.jpeg",
                    "davidaxmark.jpeg",
                     "davidaxmark.jpeg",
        ],
        title: [ "Software Engineer",
         "Open Source Advocate",
        "MySQL Developer",
         "Relational Databases",
    ],
    },
    {
        first_name: "Sergey",
        last_name: "Brin",
        link: 'https://en.wikipedia.org/wiki/Sergey_Brin',
        image: [ "sergeybrin.jpeg",
                    "sergeybrin2.jpeg",
                    "sergeybrin3.jpeg",
                     "sergeybrin4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Google Co-Founder",
        "Entrepreneur",
         "Computer Scientist",
    ],
    },
    {
        first_name: "Elizabeth",
        last_name: "Feinler",
        link: 'https://en.wikipedia.org/wiki/Elizabeth_J._Feinler',
        image: [ "elizabethfeinler.jpeg",
                    "elizabethfeinler2.jpeg",
                    "elizabethfeinler3.jpeg",
                     "elizabethfeinler.jpeg",
        ],
        title: [ "Computer Scientist",
         "Information Scientist",
        "Informational Networking",
         "ARPANET",
    ],
    },
    {
        first_name: "Andrew",
        last_name: "Ng",
        link: 'https://en.wikipedia.org/wiki/Andrew_Ng',
        image: [ "andrewng.jpeg",
                    "andrewng2.jpeg",
                    "andrewng3.jpeg",
                     "andrewng4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Artificial Intelligence",
        "Machine Learning",
         "Language Processing",
    ],
    },
    {
        first_name: "Demis",
        last_name: "Hassabis",
        link: 'https://en.wikipedia.org/wiki/Demis_Hassabis',
        image: [ "demishassabis.jpeg",
                    "demishassabis2.jpeg",
                    "demishassabis3.jpeg",
                     "demishassabis4.jpeg",
        ],
        title: [ "Artificial Intelligence",
         "Neuroscientist",
        "Entrepreneur",
         "Machine Learning",
    ],
    },
    {
        first_name: "Karen",
        last_name: "Spärck Jones",
        link: 'https://en.wikipedia.org/wiki/Karen_Sp%C3%A4rck_Jones',
        image: [ "karensparckjones.jpeg",
                    "karensparckjones.jpeg",
                    "karensparckjones3.jpeg",
                     "karensparckjones3.jpeg",
        ],
        title: [ "Computer Scientist",
         "Inverse Document Frequency",
        "Information Retrieval",
         "Natural Language Processing",
    ],
    },
    {
        first_name: "Timnit",
        last_name: "Gebru",
        link: 'https://en.wikipedia.org/wiki/Timnit_Gebru',
        image: [ "timnitgebru.jpeg",
                "timnitgebru2.jpeg",
                "timnitgebru3.jpeg",
                "timnitgebru4.jpeg",],        
        title: [ "Computer Scientist",
        "Algorithmic Bias",
        "Data Mining",
        "Artificial Intelligence",],    
    },
    {
        first_name: "Max",
        last_name: "Levchin",
        link: 'https://en.wikipedia.org/wiki/Max_Levchin',
        image: [ "maxlevchin.jpeg",
                    "maxlevchin2.jpeg",
                    "maxlevchin3.jpeg",
                     "maxlevchin4.jpeg",],
        title: [ "Software Engineer",
         "Paypal Co-Founder",
        "Entrepreneur",
         "CAPTCHA",],
    },
    {
        first_name: "Shafi",
        last_name: "Goldwasser",
        link: 'https://en.wikipedia.org/wiki/Shafi_Goldwasser',
        image: [ "shafigoldwasser.jpeg",
                    "shafigoldwasser2.jpeg",
                    "shafigoldwasser3.jpeg",
                     "shafigoldwasser4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Cryptologist",
        "Zero-Knowledge Proofs",
         "Cyber-Security",
    ],
    },
    {
        first_name: "Lisa",
        last_name: "Su",
        link: 'https://en.wikipedia.org/wiki/Lisa_Su',
        image: [ "lisasu.jpeg",
                    "lisasu2.jpeg",
                    "lisasu3.jpeg",
                     "lisasu4.jpeg",
        ],
        title: [ "Electrical Engineer",
         "Hardware Design",
        "Computer Engineer",
         "High Performance Processors",
    ],
    },
    {
        first_name: "Sophie",
        last_name: "Wilson",
        link: 'https://en.wikipedia.org/wiki/Sophie_Wilson',
        image: [ "sophiewilson.jpeg",
                    "sophiewilson2.jpeg",
                    "sophiewilson3.jpeg",
                     "sophiewilson4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Computer Engineer",
        "Computer Design",
         "Processor Architecture",
    ],
    },
    {
        first_name: "Vint",
        last_name: "Cerf",
        link: 'https://en.wikipedia.org/wiki/Vint_Cerf',
        image: [ "vintcerf.jpeg",
                    "vintcerf2.jpeg",
                    "vintcerf3.jpeg",
                     "vintcerf4.jpeg",
        ],
        title: [ "Telecommunications",
         "Systems Engineer",
        "Internet Protocol Suite",
         "Telecommunications",
    ],
    },
    {
        first_name: "Manuel",
        last_name: "Blum",
        link: 'https://en.wikipedia.org/wiki/Manuel_Blum',
        image: [ "manuelblum.jpeg",
                    "manuelblum.jpeg",
                    "manuelblum.jpeg",
                     "manuelblum.jpeg",
        ],
        title: [ "Computer Scientist",
         "Cryptography",
        "Program Checking",
         "Complex Computational Theory",
    ],
    },
    {
        first_name: "Frances",
        last_name: "Allen",
        link: 'https://en.wikipedia.org/wiki/Frances_Allen',
        image: [ "francesallen.jpeg",
                    "francesallen2.jpeg",
                    "francesallen3.jpeg",
                     "francesallen4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Optimizing Compilation",
        "Parallel Computing",
         "Program Optimization",
    ],
    },
    {
        first_name: "Edsger W.",
        last_name: "Dijkstra",
        link: 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra',
        image: [ "edsgerwdijkstra.jpeg",
                    "edsgerwdijkstra2.jpeg",
                    "edsgerwdijkstra3.jpeg",
                     "edsgerwdijkstra4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Software Engineer",
        "Systems Scientist",
         "Theoretical Physicist",
    ],
    },
    {
        first_name: "Kunihiko",
        last_name: "Fukushima",
        link: 'https://en.wikipedia.org/wiki/Kunihiko_Fukushima',
        image: [ "kunihikofukushima.jpeg",
                    "kunihikofukushima.jpeg",
                    "kunihikofukushima.jpeg",
                     "kunihikofukushima.jpeg",
        ],
        title: [ "Computer Scientist",
         "Neural Networks",
        "Deep Learning",
         "Neocognitron",
    ],
    },
    {
        first_name: "DJ",
        last_name: "Patil",
        link: 'https://en.wikipedia.org/wiki/DJ_Patil',
        image: [ "djpatil.jpeg",
                    "djpatil2.jpeg",
                    "djpatil3.jpeg",
                     "djpatil4.jpeg",
        ],
        title: [ "Data Scientist",
         "Mathematician",
        "Computer Scientist",
         "Data Analyst",
    ],
    },
    {
        first_name: "Fei Fei",
        last_name: "Li",
        link: 'https://en.wikipedia.org/wiki/Fei-Fei_Li',
        image: [ "feifeili.jpeg",
                    "feifeili2.jpeg",
                    "feifeili3.jpeg",
                     "feifeili4.jpeg",
        ],
        title: [ 'Computer Scientist',
         'Artificial Intelligence',
        'Machine Learning',
         'Cognitive Neuroscience',
    ],
    },
    {
        first_name: "Ken",
        last_name: "Thompson",
        link: 'https://en.wikipedia.org/wiki/Ken_Thompson',
        image: [ "kenthompson.jpeg",
                    "kenthompson.jpeg",
                    "kenthompson2.jpeg",
                     "kenthompson2.jpeg",
        ],
        title: [ "Computer Scientist",
         "UNIX Developer",
        "Go Developer",
         "Language Design",
    ],
    },
    {
        first_name: "Dennis",
        last_name: "Ritchie",
        link: 'https://en.wikipedia.org/wiki/Dennis_Ritchie',
        image: [ "dennisritchie.jpeg",
                    "dennisritchie2.jpeg",
                    "dennisritchie3.jpeg",
                     "dennisritchie3.jpeg",
        ],
        title: [ "Computer Scientist",
         "UNIX Developer",
        "C Developer",
         "Language Design",
    ],
    },
    {
        first_name: "Tony",
        last_name: "Hoare",
        link: 'https://en.wikipedia.org/wiki/Tony_Hoare',
        image: [ "tonyhoare.jpeg",
                    "tonyhoare2.jpeg",
                    "tonyhoare3.jpeg",
                     "tonyhoare4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Language Design",
        "Operating Systems",
         "Algorithmic Design",
    ],
    },
    {
        first_name: "Alan",
        last_name: "Kay",
        link: 'https://en.wikipedia.org/wiki/Alan_Kay',
        image: [ "alankay.jpeg",
                    "alankay2.jpeg",
                    "alankay3.jpeg",
                     "alankay4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Object Oriented",
        "Graphical User Interface",
         "Message Passing",
    ],
    },
    {
        first_name: "Andrew",
        last_name: "Yao",
        link: 'https://en.wikipedia.org/wiki/Andrew_Yao',
        image: [ "andrewyao.jpeg",
                    "andrewyao.jpeg",
                    "andrewyao.jpeg",
                     "andrewyao.jpeg",
        ],
        title: [ "Computer Scientist",
         "Computational Theorist",
        "Cryptography",
         "Minimax Theorem",
    ],
    },
    {
        first_name: "Marvin",
        last_name: "Minsky",
        link: 'https://en.wikipedia.org/wiki/Marvin_Minsky',
        image: [ "marvinminsky.jpeg",
                    "marvinminsky2.jpeg",
                    "marvinminsky3.jpeg",
                     "marvinminsky4.jpeg",
        ],
        title: [ "Computer Scientist",
         "Cognitive Scientist",
        "Artifical Intelligence",
         "Neural Networking",
    ],
    },
    {
        first_name: "Adi",
        last_name: "Shamir",
        link: 'https://en.wikipedia.org/wiki/Adi_Shamir',
        image: [ "adishamir.jpeg",
                    "adishamir.jpeg",
                    "adishamir.jpeg",
                     "adishamir.jpeg",
        ],
        title: [ "Cryographer",
         "Computer Scientist",
        "Cryptanalyst",
         "Zero Knowledge Proofs",
    ],
    },
    {
        first_name: "Kurt",
        last_name: "Gödel",
        link: 'https://en.wikipedia.org/wiki/Kurt_G%C3%B6del',
        image: [ "kurtgodel.jpeg",
                    "kurtgodel.jpeg",
                    "kurtgodel2.jpeg",
                     "kurtgodel2.jpeg",
        ],
        title: [ "Mathematician",
         "Logician",
        "Physicist",
         "Analytical Philosophy",
    ],
    },
    {
        first_name: "Musa",
        last_name: "al-Khwarizmi",
        link: 'https://en.wikipedia.org/wiki/Muhammad_ibn_Musa_al-Khwarizmi',
        image: [ "musaalkhwarizmi.jpeg",
                    "musaalkhwarizmi.jpeg",
                    "musaalkhwarizmi2.jpeg",
                     "musaalkhwarizmi2.jpeg",
                     
        ],
        title: [ 'Mathematician',
         'Algorithms',
        'Astronomer',
         'Polymath',
    ],
    },
    {
        first_name: "Pāṇini",
        last_name: "",
        link: 'https://en.wikipedia.org/wiki/P%C4%81%E1%B9%87ini',
        image: [ "panini.jpeg",
                    "panini.jpeg",
                    "panini.jpeg",
                     "panini.jpeg",
        ],
        title: [ 'Grammarian',
         'Philologist',
        'Linguist',
         'Morphological Analyst'
    ],
    },
    {
        first_name: "Ismail",
        last_name: "al-Jazari",
        link: 'https://en.wikipedia.org/wiki/Ismail_al-Jazari',
        image: [ "ismailaljazari.jpeg",
                    "ismailaljazari.jpeg",
                    "ismailaljazari3.jpeg",
                     "ismailaljazari3.jpeg",
        ],
        title: [ 'Mechanical Engineer',
         'Mathematician',
        'Machinery Architect',
         'Polymath'
    ],
    },
    {
        first_name: "Susan L.",
        last_name: "Graham",
        link: 'https://en.wikipedia.org/wiki/Susan_L._Graham',
        image: [ "susanlgraham.jpeg",
                    "susanlgraham2.jpeg",
                    "susanlgraham3.jpeg",
                     "susanlgraham4.jpeg",
        ],
        title: [ 'Computer Scientist',
         'Mathematician',
        'Systems Developer',
         'Language Design',
    ],
    },
    {
        first_name: "Gottfried",
        last_name: "Leibniz",
        link: 'https://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz',
        image: [ "gottfriedleibniz.jpeg",
                    "gottfriedleibniz2.jpeg",
                    "gottfriedleibniz3.jpeg",
                     "gottfriedleibniz4.jpeg",
        ],
        title: [ 'Mathematician',
         'Philosopher',
        'Scientist',
         'Polymath'
    ],
    },
    {
        first_name: "Blaise",
        last_name: "Pascal",
        link: 'https://en.wikipedia.org/wiki/Blaise_Pascal',
        image: [ "blaisepascal.jpeg",
                    "blaisepascal2.jpeg",
                    "blaisepascal3.jpeg",
                     "blaisepascal4.jpeg",
        ],
        title: [ 'Mathematician',
         'Physicist',
        'Philosopher',
         'Mechanical Engineer'
    ],
    },
    {
        first_name: "Claude",
        last_name: "Shannon",
        link: 'https://en.wikipedia.org/wiki/Claude_Shannon',
        image: [ "claudeshannon.jpeg",
                    "claudeshannon2.jpeg",
                    "claudeshannon3.jpeg",
                     "claudeshannon4.jpeg",
        ],
        title: [ 'Mathematician',
         'Electrical Enginner',
        'Information Theory',
         'Cryptographer'
    ],
    },
],)

puts 'Seeding Cards + Transactions'

User.all[2,User.all.size].each{|user| 
    70.times {|i|
        cardRarity = rand(4)
        variantRarity = rand(4)
        Card.create!(user_id:user.id, character_id: Character.all.sample.id, unique_id: rand(9).to_s + 'x' + SecureRandom.alphanumeric(10), for_sale: false, rarity:cardRarity, variant: variantRarity)
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
        Card.all[Card.all.size-1].update!(user_id: newFrom.id)
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
        newFrom = newTo
        6.times{|i|
            newTo = User.all.sample
            if cardRarity == 0
                salePrice = rand(20) + 5
            elsif cardRarity == 1
                salePrice = rand(40) + 25
            elsif cardRarity == 2 
                salePrice = rand(60) + 60
            elsif cardRarity == 3
                salePrice = rand(100) + 60
            end
            Transaction.create(card_id: Card.all[Card.all.size-1].id, from_id: User.all.sample, to_id: newTo, sale_price: salePrice)
            newFrom = newTo
        }

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
        if randNum > 90
            Card.all[Card.all.size-1].update!(for_sale: true, sale_price: salePrice)
        end

    }
}

puts 'Seeding Complete 🚀'