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
        image_url2: "vitalikbuterin2.jpeg",
        image_url3: "vitalikbuterin3.jpeg",
        image_url4: "vitalikbuterin4.jpeg",
        title1: 'Ethereum Co-Founder',
        title2: 'Decentralized Networking',
        title3: 'Ethereum Core Developer',
        title4: 'Ethereum Co-Founder',
    },
    {
        first_name: "Katherine",
        last_name: "Johnson",
        link: 'https://en.wikipedia.org/wiki/Katherine_Johnson',
        image_url1: "katherinejohnson.jpeg",
        image_url2: "katherinejohnson2.jpeg",
        image_url3: "katherinejohnson3.jpeg",
        image_url4: "katherinejohnson4.jpeg",
        title1: 'Mathematician',
        title2: 'NASA Computer',
        title3: 'Orbital Mechanics',
        title4: 'Space Trajectory Calculator',
    },
    {
        first_name: "Alan",
        last_name: "Turing",
        link: 'https://en.wikipedia.org/wiki/Alan_Turing',
        image_url1: "alanturing.jpeg",
        image_url2: "alanturing.jpeg",
        image_url3: "alanturing.jpeg",
        image_url4: "alanturing.jpeg",
        title1: "Computer Scientist",
        title2: "Cryptanalyst",
        title3: "Mathematician",
        title4: "Logician",
    },
    {
        first_name: "Steve",
        last_name: "Jobs",
        link: 'https://en.wikipedia.org/wiki/Steve_Jobs'
        image_url1: "stevejobs.jpeg",
        image_url2: "stevejobs2.jpeg",
        image_url3: "stevejobs3.jpeg",
        image_url4: "stevejobs4.jpeg",
        title1: "Apple Co-Founder",
        title2: "Industrial Designer",
        title3: "Entrepreneur",
        title4: "Apple Innovator",
    },
    {
        first_name: "Bill",
        last_name: "Gates",
        link: 'https://en.wikipedia.org/wiki/Bill_Gates'
        image_url1: "billgates.jpeg",
        image_url2: "billgates2.jpeg",
        image_url3: "billgates3.jpeg",
        image_url4: "billgates4.jpeg",
        title1: "Microsoft Co-Founder",
        title2: "Software Engineer",
        title3: "Systems Designer",
        title4: "Entrepreneur",
    },
    {
        first_name: "Grace",
        last_name: "Hopper",
        link: 'https://en.wikipedia.org/wiki/Grace_Hopper'
        image_url1: "gracehopper.jpeg",
        image_url2: "gracehopper2.jpeg",
        image_url3: "gracehopper3.jpeg",
        image_url4: "gracehopper4.jpeg",
        title1: "Computer Scientist",
        title2: "Rear Admiral",
        title3: "Compilation Innovator",
        title4: "Mathematician",
    },
    {
        first_name: "Joan",
        last_name: "Clarke",
        link: 'https://en.wikipedia.org/wiki/Joan_Clarke'
        image_url1: "joanclarke.jpeg",
        image_url2: "joanclarke.jpeg",
        image_url3: "joanclarke.jpeg",
        image_url4: "joanclarke.jpeg",
        title1: "Cryptanalyst",
        title2: "Numismatist",
        title3: "Codebreaker",
        title4: "Mathematician",
    },
    {
        first_name: "Gavin",
        last_name: "Wood",
        link: 'https://en.wikipedia.org/wiki/Gavin_Wood'
        image_url1: "gavinwood.jpeg",
        image_url2: "gavinwood2.jpeg",
        image_url3: "gavinwood3.jpeg",
        image_url4: "gavinwood4.jpeg",
        title1: "Free-Trust Technologist"
        title2: "Computer Scientist",
        title3: "Open Source Advocate"
        title4: "Ethereum Co-Founder",
    },
    {
        first_name: "Mary",
        last_name: "Jackson",
        link: 'https://en.wikipedia.org/wiki/Mary_Jackson_(engineer)'
        image_url1: "maryjackson.jpeg",
        image_url2: "maryjackson2.jpeg",
        image_url3: "maryjackson3.jpeg",
        image_url4: "maryjackson4.jpeg",
        title1: "Mathematician"
        title2: "Aerospace Engineer"
        title3: "Aeronautical Engineer"
        title4: "Aerospace Scientist"
    },
    {
        first_name: "Mary Kenneth",
        last_name: "Keller",
        link: 'https://en.wikipedia.org/wiki/Mary_Kenneth_Keller'
        image_url1: "marykennethkeller.jpeg",
        image_url2: "marykennethkeller2.jpeg",
        image_url3: "marykennethkeller3.jpeg",
        image_url4: "marykennethkeller4.jpeg",
        title1: "Computer Scientist",
        title2: "Religious Sister",
        title3: "Mathematician",
        title4: "Physicist",
    },
    {
        first_name: "Raj",
        last_name: "Reddy",
        link: 'https://en.wikipedia.org/wiki/Raj_Reddy'
        image_url1: "rajreddy.jpeg",
        image_url2: "rajreddy2.jpeg",
        image_url3: "rajreddy3.jpeg",
        image_url4: "rajreddy4.jpeg",
        title1: "Computer Scientist",
        title2: "Artifical Intelligence",
        title3: "Machine Learning",
        title4: "Speech Recognition",
    },
    {
        first_name: "Hedy",
        last_name: "Lamarr",
        link: 'https://en.wikipedia.org/wiki/Hedy_Lamarr'
        image_url1: "hedylamarr.jpeg",
        image_url2: "hedylamarr2.jpeg",
        image_url3: "hedylamarr3.jpeg",
        image_url4: "hedylamarr4.jpeg",
        title1: "Frequency Hopping",
        title2: "Radio Guidance",
        title3: "Actress",
        title4: "Spread Spectrum",
    },
    {
        first_name: "Margaret",
        last_name: "Hamilton",
        link: 'https://en.wikipedia.org/wiki/Margaret_Hamilton_(software_engineer)'
        image_url1: "margarethamilton.jpeg",
        image_url2: "margarethamilton2.jpeg",
        image_url3: "margarethamilton3.jpeg",
        image_url4: "margarethamilton4.jpeg",
        title1: "Computer Scientist",
        title2: "Software Engineer",
        title3: "Systems Engineer",
        title4: "NASA Flight Engineer",
    },
    {
        first_name: "Mark",
        last_name: "Zuckerberg",
        link: 'https://en.wikipedia.org/wiki/Mark_Zuckerberg'
        image_url1: "markzuckerberg.jpeg",
        image_url2: "markzuckerberg2.jpeg",
        image_url3: "markzuckerberg3.jpeg",
        image_url4: "markzuckerberg4.jpeg",
        title1: "Facebook Co-Founder"
        title2: "Software Engineer"
        title3: "Social Networking"
        title4: "Entrepreneur"
    },
    {
        first_name: "Anita",
        last_name: "Borg",
        link: 'https://en.wikipedia.org/wiki/Anita_Borg'
        image_url1: "anitaborg.jpeg",
        image_url2: "anitaborg2.jpeg",
        image_url3: "anitaborg3.jpeg",
        image_url4: "anitaborg4.jpeg",
        title1: "Computer Scientist",
        title2: "Systems Design",
        title3: "Operating Systems",
        title4: "Software Developer",
    },
    {
        first_name: "Larry",
        last_name: "Page",
        link: 'https://en.wikipedia.org/wiki/Larry_Page'
        image_url1: "larrypage.jpeg",
        image_url2: "larrypage2.jpeg",
        image_url3: "larrypage3.jpeg",
        image_url4: "larrypage4.jpeg",
        title1: "Computer Scientist",
        title2: "Google Co-Founder",
        title3: "Search Algorithms",
        title4: "Entrepreneur",
    },
    {
        first_name: "Yukihiro",
        last_name: "Matsumoto",
        link: 'https://en.wikipedia.org/wiki/Yukihiro_Matsumoto'
        image_url1: "yukihiromatsumoto.jpeg",
        image_url2: "yukihiromatsumoto2.jpeg",
        image_url3: "yukihiromatsumoto3.jpeg",
        image_url4: "yukihiromatsumoto4.jpeg",
        title1: "Ruby Developer",
        title2: "Computer Scientist",
        title3: "Language Programmer",
        title4: "Open Source Advocate",
    },
    {
        first_name: "Jeff",
        last_name: "Bezos",
        link: 'https://en.wikipedia.org/wiki/Jeff_Bezos'
        image_url1: "jeffbezos.jpeg",
        image_url2: "jeffbezos2.jpeg",
        image_url3: "jeffbezos3.jpeg",
        image_url4: "jeffbezos4.jpeg",
        title1: "Software Engineer",
        title2: "Computer Engineer",
        title3: "E-Commerce",
        title4: "Entrepreneur",
    },
    {
        first_name: "Annie",
        last_name: "Easley",
        link: 'https://en.wikipedia.org/wiki/Annie_Easley'
        image_url1: "annieeasley.png",
        image_url2: "annieeasley2.png",
        image_url3: "annieeasley3.png",
        image_url4: "annieeasley4.png",
        title1: "Rocket Scientist",
        title2: "Computer Scientist",
        title3: "Mathematician",
        title4: "Software Developer",
    },
    {
        first_name: "Ada",
        last_name: "Lovelace",
        link: 'https://en.wikipedia.org/wiki/Ada_Lovelace'
        image_url1: "adalovelace.jpeg",
        image_url2: "adalovelace2.jpeg",
        image_url3: "adalovelace3.jpeg",
        image_url4: "adalovelace4.jpeg",
        title1: "Mathematician",
        title2: "Tech Visionary",
        title3: "Poetical Science",
        title4: "Metaphysician",
    },
    {
        first_name: "Clarence",
        last_name: "Ellis",
        link: 'https://en.wikipedia.org/wiki/Clarence_Ellis_(computer_scientist)'
        image_url1: "clarenceellis.jpeg",
        image_url2: "clarenceellis.jpeg",
        image_url3: "clarenceellis.jpeg",
        image_url4: "clarenceellis.jpeg",
        title1: "Computer Scientist",
        title2: "Software Engineer",
        title3: "Cognitive Science",
        title4: "Simultaneous Editing",
    },
    {
        first_name: "Tim",
        last_name: "Berners Lee",
        link: 'https://en.wikipedia.org/wiki/Tim_Berners-Lee'
        image_url1: "timbernerslee.jpeg",
        image_url2: "timbernerslee.jpeg",
        image_url3: "timbernerslee.jpeg",
        image_url4: "timbernerslee.jpeg",
        title1: "Computer Scientist"
        title2: "World Wide Web"
        title3: "Information Management"
        title4: "Telecommunications"
    },
    {
        first_name: "John",
        last_name: "Von Neumann",
        link: 'https://en.wikipedia.org/wiki/John_von_Neumann'
        image_url1: "johnvonneumann.jpeg",
        image_url2: "johnvonneumann2.jpeg",
        image_url3: "johnvonneumann3.jpeg",
        image_url4: "johnvonneumann4.jpeg",
        title1: "Mathematician",
        title2: "Physicist",
        title3: "Computer Scientist",
        title4: "Polymath",
    },
    {
        first_name: "Steve",
        last_name: "Wozniak",
        link: 'https://en.wikipedia.org/wiki/Steve_Wozniak'
        image_url1: "stevewozniak.jpeg",
        image_url2: "stevewozniak2.jpeg",
        image_url3: "stevewozniak3.jpeg",
        image_url4: "stevewozniak4.jpeg",
        title1: "Computer Programmer",
        title2: "Apple Co-Founder",
        title3: "Electronics Engineer",
        title4: "Microcomputing",
    },
    {
        first_name: "J.C.R.",
        last_name: "Licklider",
        link: 'https://en.wikipedia.org/wiki/J._C._R._Licklider'
        image_url1: "jcrlicklider.jpeg",
        image_url2: "jcrlicklider2.jpeg",
        image_url3: "jcrlicklider3.jpeg",
        image_url4: "jcrlicklider4.jpeg",
        title1: "Computer Scientist"
        title2: "Psychologist"
        title3: "Interactive Computing"
        title4: "Intergalactic Computer Network"
    },
    {
        first_name: "John",
        last_name: "McCarthy",
        link: 'https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist)'
        image_url1: "johnmccarthy.jpeg",
        image_url2: "johnmccarthy2.jpeg",
        image_url3: "johnmccarthy3.jpeg",
        image_url4: "johnmccarthy4.jpeg",
        title1: "Computer Scientist",
        title2: "Cognitive Scientist",
        title3: "Artifical Intelligence",
        title4: "Language Developer",
    },
    {
        first_name: "Stanisław",
        last_name: "Ulam",
        link: 'https://en.wikipedia.org/wiki/Stanislaw_Ulam'
        image_url1: "stanislawulam.jpeg",
        image_url2: "stanislawulam2.jpeg",
        image_url3: "stanislawulam3.jpeg",
        image_url4: "stanislawulam4.jpeg",
        title1: "Mathematician",
        title2: "Monte Carlo Methods",
        title3: "Physicist",
        title4: "Ergodic Theory",
    },
    {
        first_name: "Heron",
        last_name: "of Alexandria",
        link: 'https://en.wikipedia.org/wiki/Hero_of_Alexandria'
        image_url1: "heronofalexandria.jpeg",
        image_url2: "heronofalexandria.jpeg",
        image_url3: "heronofalexandria.jpeg",
        image_url4: "heronofalexandria.jpeg",
        title1: "Mathematician",
        title2: "Physicist",
        title3: "Mechanical Engineer",
        title4: "Heron's Formula",
    },
    {
        first_name: "Guido",
        last_name: "Van Rossum",
        link: 'https://en.wikipedia.org/wiki/Guido_van_Rossum'
        image_url1: "guidovanrossum.jpeg",
        image_url2: "guidovanrossum2.jpeg",
        image_url3: "guidovanrossum3.jpeg",
        image_url4: "guidovanrossum4.jpeg",
        title1: "Python Developer"
        title2: "Computer Scientist"
        title3: "Software Engineer"
        title4: "Language Design"
    },
    {
        first_name: "John",
        last_name: "Tukey",
        link: 'https://en.wikipedia.org/wiki/John_Tukey'
        image_url1: "johnwtukey.jpeg",
        image_url2: "johnwtukey2.jpeg",
        image_url3: "johnwtukey3.jpeg",
        image_url4: "johnwtukey4.jpeg",
        title1: "Mathematician",
        title2: "Statistician",
        title3: "Fast Fourier Transform",
        title4: "Exploratory Data Analysis",
    },
    {
        first_name: "Joseph Marie",
        last_name: "Jacquard",
        link: 'https://en.wikipedia.org/wiki/Joseph_Marie_Jacquard'
        image_url1: "josephmariejacquard.jpeg",
        image_url2: "josephmariejacquard2.jpeg",
        image_url3: "josephmariejacquard3.jpeg",
        image_url4: "josephmariejacquard4.jpeg",
        title1: "Weaver",
        title2: "Merchant",
        title3: "Mechanical Engineer",
        title4: "Programmable Loom",
    },
    {
        first_name: "Charles",
        last_name: "Babbage",
        link: 'https://en.wikipedia.org/wiki/Charles_Babbage'
        image_url1: "charlesbabbage.jpeg",
        image_url2: "charlesbabbage2.jpeg",
        image_url3: "charlesbabbage3.jpeg",
        image_url4: "charlesbabbage4.jpeg",
        title1: "Mathematician",
        title2: "Mechanical Engineer",
        title3: "Difference Engine",
        title4: "Analytical Engine",
    },
    {
        first_name: "Dorothy",
        last_name: "Vaughan",
        link: 'https://en.wikipedia.org/wiki/Dorothy_Vaughan'
        image_url1: "dorothyvaughan.jpeg",
        image_url2: "dorothyvaughan.jpeg",
        image_url3: "dorothyvaughan2.jpeg",
        image_url4: "dorothyvaughan2.jpeg",
        title1: "Mathematician"
        title2: "NASA Computer"
        title3: "Computer Programmer"
        title4: "Flight Mechanics"
    },
    {
        first_name: "Tommy",
        last_name: "Flowers",
        link: 'https://en.wikipedia.org/wiki/Tommy_Flowers'
        image_url1: "tommyflowers.jpeg",
        image_url2: "tommyflowers2.jpeg",
        image_url3: "tommyflowers3.jpeg",
        image_url4: "tommyflowers4.jpeg",
        title1: "Computer Engineer",
        title2: "Codebreaker",
        title3: "Cryptanalyst",
        title4: "Collossus",
    },
    {
        first_name: "Linus",
        last_name: "Torvalds",
        link: 'https://en.wikipedia.org/wiki/Linus_Torvalds'
        image_url1: "linustorvalds.jpeg",
        image_url2: "linustorvalds2.jpeg",
        image_url3: "linustorvalds1.jpeg",
        image_url4: "linustorvalds1.jpeg",
        title1: "Linux Developer"
        title2: "Software Engineer"
        title3: "Git Version Control"
        title4: "Open Source Advocate"
    },
    {
        first_name: "John",
        last_name: "Backus",
        link: 'https://en.wikipedia.org/wiki/John_Backus'
        image_url1: "johnbackus1.jpeg",
        image_url2: "johnbackus.jpeg",
        image_url3: "johnbackus.jpeg",
        image_url4: "johnbackus.jpeg",
        title1: "Computer Scientist",
        title2: "FORTRAN",
        title3: "Language Design",
        title4: "Backus-Naur Form",
    },
    {
        first_name: "Douglas",
        last_name: "Crockford",
        link: 'https://en.wikipedia.org/wiki/Douglas_Crockford'
        image_url1: "douglascrockford.jpeg",
        image_url2: "douglascrockford2.jpeg",
        image_url3: "douglascrockford3.jpeg",
        image_url4: "douglascrockford4.jpeg",
        title1: "Computer Scientist"
        title2: "JSON"
        title3: "Javascript Developer"
        title4: "Language Design"
    },
    {
        first_name: "Miguel",
        last_name: "De Icaza",
        link: 'https://en.wikipedia.org/wiki/Miguel_de_Icaza'
        image_url1: "migueldeicaza.jpeg",
        image_url2: "migueldeicaza2.jpeg",
        image_url3: "migueldeicaza3.jpeg",
        image_url4: "migueldeicaza4.jpeg",
        title1: "Software Developer"
        title2: "Open Source Advocate"
        title3: "Operating Systems"
        title4: "Frameworks"
    },
    {
        first_name: "Carl",
        last_name: "Sassenrath",
        link: 'https://en.wikipedia.org/wiki/Carl_Sassenrath'
        image_url1: "carlsassenrath.jpeg",
        image_url2: "carlsassenrath.jpeg",
        image_url3: "carlsassenrath.jpeg",
        image_url4: "carlsassenrath.jpeg",
        title1: "Software Engineer"
        title2: "Operating Systems"
        title3: "Language Design"
        title4: "Computational Multitasking"
    },
    {
        first_name: "Barbara",
        last_name: "Liskov",
        link: 'https://en.wikipedia.org/wiki/Barbara_Liskov'
        image_url1: "barbaraliskov.jpeg",
        image_url2: "barbaraliskov2.jpeg",
        image_url3: "barbaraliskov3.jpeg",
        image_url4: "barbaraliskov4.jpeg",
        title1: "Computer Scientist"
        title2: "Distributed Computing"
        title3: "Language Design"
        title4: "Type Theory"
    },
    {
        first_name: "David",
        last_name: "Axmark",
        link: 'https://en.wikipedia.org/wiki/David_Axmark'
        image_url1: "davidaxmark.jpeg",
        image_url2: "davidaxmark.jpeg",
        image_url3: "davidaxmark.jpeg",
        image_url4: "davidaxmark.jpeg",
        title1: "Software Engineer",
        title2: "Open Source Advocate",
        title3: "MySQL Developer",
        title4: "Relational Databases",
    },
    {
        first_name: "Donald",
        last_name: "Knuth",
        link: 'https://en.wikipedia.org/wiki/Donald_Knuth'
        image_url1: "donaldknuth.jpeg",
        image_url2: "donaldknuth2.jpeg",
        image_url3: "donaldknuth3.jpeg",
        image_url4: "donaldknuth4.jpeg",
        title1: "Computer Scientist"
        title2: "Mathematician"
        title3: "Algorithm Analyst"
        title4: "Literate Programming"
    },
    {
        first_name: "Sergey",
        last_name: "Brin",
        link: 'https://en.wikipedia.org/wiki/Sergey_Brin'
        image_url1: "sergeybrin.jpeg",
        image_url2: "sergeybrin2.jpeg",
        image_url3: "sergeybrin3.jpeg",
        image_url4: "sergeybrin4.jpeg",
        title1: "Computer Scientist",
        title2: "Google Co-Founder",
        title3: "Entrepreneur",
        title4: "Computer Scientist",
    },
    {
        first_name: "Elizabeth",
        last_name: "Feinler",
        link: 'https://en.wikipedia.org/wiki/Elizabeth_J._Feinler'
        image_url1: "elizabethfeinler.jpeg",
        image_url2: "elizabethfeinler2.jpeg",
        image_url3: "elizabethfeinler3.jpeg",
        image_url4: "elizabethfeinler.jpeg",
        title1: "Computer Scientist"
        title2: "Information Scientist"
        title3: "Informational Networking"
        title4: "ARPANET"
    }
    {
        first_name: "Andrew",
        last_name: "Ng",
        link: 'https://en.wikipedia.org/wiki/Andrew_Ng'
        image_url1: "andrewng.jpeg",
        image_url2: "andrewng2.jpeg",
        image_url3: "andrewng3.jpeg",
        image_url4: "andrewng4.jpeg",
        title1: "Computer Scientist",
        title2: "Artificial Intelligence",
        title3: "Machine Learning",
        title4: "Language Processing",
    },
    {
        first_name: "Demis",
        last_name: "Hassabis",
        link: 'https://en.wikipedia.org/wiki/Demis_Hassabis'
        image_url1: "demishassabis.jpeg",
        image_url2: "demishassabis2.jpeg",
        image_url3: "demishassabis3.jpeg",
        image_url4: "demishassabis4.jpeg",
        title1: "Artificial Intelligence",
        title2: "Neuroscientist",
        title3: "Entrepreneur",
        title4: "Machine Learning",
    },
    {
        first_name: "Karen",
        last_name: "Spärck Jones",
        link: 'https://en.wikipedia.org/wiki/Karen_Sp%C3%A4rck_Jones'
        image_url1: "karensparckjones.jpeg",
        image_url2: "karensparckjones2.jpeg",
        image_url3: "karensparckjones3.jpeg",
        image_url4: "karensparckjones.jpeg",
        title1: "Computer Scientist",
        title2: "Inverse Document Frequency",
        title3: "Information Retrieval",
        title4: "Natural Language Processing",
    },
    {
        first_name: "Timnit",
        last_name: "Gebru",
        link: 'https://en.wikipedia.org/wiki/Timnit_Gebru'
        image_url1: "timnitgebru.jpeg",
        image_url1: "timnitgebru1.jpeg",
        image_url1: "timnitgebru1.jpeg",
        image_url1: "timnitgebru1.jpeg",
        title1: "Computer Scientist",
    },
    title1: "Algorithmic Bias",
    {
        title1: "Data Mining",
        first_name: "Max",
        title1: "Artificial Intelligence",
        last_name: "Levchin",
        link: 'https://en.wikipedia.org/wiki/Max_Levchin'
        image_url1: "maxlevchin.jpeg",
        image_url2: "maxlevchin2.jpeg",
        image_url3: "maxlevchin3.jpeg",
        image_url4: "maxlevchin4.jpeg",
        title1: "Software Engineer",
        title2: "Paypal Co-Founder",
        title3: "Entrepreneur",
        title4: "CAPTCHA",
    },
    {
        first_name: "Shafi",
        last_name: "Goldwasser",
        link: 'https://en.wikipedia.org/wiki/Shafi_Goldwasser'
        image_url1: "shafigoldwasser.jpeg",
        image_url2: "shafigoldwasser2.jpeg",
        image_url3: "shafigoldwasser3.jpeg",
        image_url4: "shafigoldwasser4.jpeg",
        title1: "Computer Scientist",
        title2: "Cryptologist",
        title3: "Zero-Knowledge Proofs",
        title4: "Cyber-Security",
    },
    {
        first_name: "Lisa",
        last_name: "Su",
        link: 'https://en.wikipedia.org/wiki/Lisa_Su'
        image_url1: "lisasu.jpeg",
        image_url2: "lisasu2.jpeg",
        image_url3: "lisasu3.jpeg",
        image_url4: "lisasu4.jpeg",
        title1: "Electrical Engineer",
        title2: "Hardware Design",
        title3: "Computer Engineer",
        title4: "High Performance Processors",
    },
    {
        first_name: "Sophie",
        last_name: "Wilson",
        link: 'https://en.wikipedia.org/wiki/Sophie_Wilson'
        image_url1: "sophiewilson1.jpeg",
        image_url2: "sophiewilson2.jpeg",
        image_url3: "sophiewilson3.jpeg",
        image_url4: "sophiewilson4.jpeg",
        title1: "Computer Scientist",
        title2: "Computer Engineer",
        title3: "Computer Design",
        title4: "Processor Architecture",
    },
    {
        first_name: "Vint",
        last_name: "Cerf",
        link: 'https://en.wikipedia.org/wiki/Vint_Cerf'
        image_url1: "vintcerf.jpeg",
        image_url2: "vintcerf2.jpeg",
        image_url3: "vintcerf3.jpeg",
        image_url4: "vintcerf4.jpeg",
        title1: "Telecommunications",
        title2: "Systems Engineer",
        title3: "Internet Protocol Suite",
        title4: "Telecommunications",
    },
    {
        first_name: "Manuel",
        last_name: "Blum",
        link: 'https://en.wikipedia.org/wiki/Manuel_Blum'
        image_url1: "manuelblum.jpeg",
        image_url2: "manuelblum.jpeg",
        image_url3: "manuelblum.jpeg",
        image_url4: "manuelblum.jpeg",
        title1: "Computer Scientist",
        title2: "Cryptography",
        title3: "Program Checking",
        title4: "Complex Computational Theory",
    },
    {
        first_name: "Frances",
        last_name: "Allen",
        link: 'https://en.wikipedia.org/wiki/Frances_Allen'
        image_url1: "francesallen.jpeg",
        image_url2: "francesallen2.jpeg",
        image_url3: "francesallen3.jpeg",
        image_url4: "francesallen4.jpeg",
        title1: "Computer Scientist",
        title2: "Optimizing Compilation",
        title3: "Parallel Computing",
        title4: "Program Optimization",
    },
    {
        first_name: "Edsger W.",
        last_name: "Dijkstra",
        link: 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra'
        image_url1: "edsgerwdijkstra.jpeg",
        image_url2: "edsgerwdijkstra2.jpeg",
        image_url3: "edsgerwdijkstra3.jpeg",
        image_url4: "edsgerwdijkstra4.jpeg",
        title1: "Computer Scientist",
        title2: "Software Engineer",
        title3: "Systems Scientist",
        title4: "Theoretical Physicist",
    },
    {
        first_name: "Kunihiko",
        last_name: "Fukushima",
        link: 'https://en.wikipedia.org/wiki/Kunihiko_Fukushima'
        image_url1: "kunihikofukushima.jpeg",
        image_url2: "kunihikofukushima.jpeg",
        image_url3: "kunihikofukushima.jpeg",
        image_url4: "kunihikofukushima.jpeg",
        title1: "Computer Scientist",
        title2: "Neural Networks",
        title3: "Deep Learning",
        title4: "Neocognitron",
    },
    {
        first_name: "DJ",
        last_name: "Patil",
        link: 'https://en.wikipedia.org/wiki/DJ_Patil',
        image_url1: "djpatil.jpeg",
        image_url2: "djpatil2.jpeg",
        image_url3: "djpatil3.jpeg",
        image_url4: "djpatil4.jpeg",
        title1: "Data Scientist",
        title2: "Mathematician",
        title3: "Computer Scientist",
        title4: "Data Analyst",
    },
    {
        first_name: "Fei Fei",
        last_name: "Li",
        link: 'https://en.wikipedia.org/wiki/Fei-Fei_Li',
        image_url1: "feifeili.jpeg",
        image_url2: "feifeili2.jpeg",
        image_url3: "feifeili3.jpeg",
        image_url4: "feifeili4.jpeg",
        title1: 'Computer Scientist'
        title2: 'Artificial Intelligence'
        title3: 'Machine Learning'
        title4: 'Cognitive Neuroscience'
    },
    {
        first_name: "Ken",
        last_name: "Thompson",
        link: 'https://en.wikipedia.org/wiki/Ken_Thompson'
        image_url1: "kenthompson.jpeg",
        image_url2: "kenthompson.jpeg",
        image_url3: "kenthompson2.jpeg",
        image_url4: "kenthompson2.jpeg",
        title1: "Computer Scientist",
        title2: "UNIX Developer",
        title3: "Go Developer",
        title4: "Language Design",
    },
    {
        first_name: "Dennis",
        last_name: "Ritchie",
        link: 'https://en.wikipedia.org/wiki/Dennis_Ritchie'
        image_url1: "dennisritchie.jpeg",
        image_url2: "dennisritchie2.jpeg",
        image_url3: "dennisritchie3.jpeg",
        image_url4: "dennisritchie3.jpeg",
        title1: "Computer Scientist",
        title2: "UNIX Developer",
        title3: "C Developer",
        title4: "Language Design",
    },
    {
        first_name: "Tony",
        last_name: "Hoare",
        link: 'https://en.wikipedia.org/wiki/Tony_Hoare'
        image_url1: "tonyhoare.jpeg",
        image_url2: "tonyhoare2.jpeg",
        image_url3: "tonyhoare3.jpeg",
        image_url4: "tonyhoare4.jpeg",
        title1: "Computer Scientist",
        title2: "Language Design",
        title3: "Operating Systems",
        title4: "Algorithmic Design",
    },
    {
        first_name: "Alan",
        last_name: "Kay",
        link: 'https://en.wikipedia.org/wiki/Alan_Kay'
        image_url1: "alankay1.jpeg",
        image_url2: "alankay2.jpeg",
        image_url3: "alankay3.jpeg",
        image_url4: "alankay4.jpeg",
        title1: "Computer Scientist",
        title2: "Object Oriented",
        title3: "Graphical User Interface",
        title4: "Message Passing",
    },
    {
        first_name: "Andrew",
        last_name: "Yao",
        link: 'https://en.wikipedia.org/wiki/Andrew_Yao'
        image_url1: "andrewyao.jpeg",
        image_url2: "andrewyao.jpeg",
        image_url3: "andrewyao.jpeg",
        image_url4: "andrewyao.jpeg",
        title1: "Computer Scientist",
        title2: "Computational Theorist",
        title3: "Cryptography",
        title4: "Minimax Theorem",
    },
    {
        first_name: "Marvin",
        last_name: "Minsky",
        link: 'https://en.wikipedia.org/wiki/Marvin_Minsky'
        image_url1: "marvinminsky.jpeg",
        image_url2: "marvinminsky2.jpeg",
        image_url3: "marvinminsky3.jpeg",
        image_url4: "marvinminsky4.jpeg",
        title1: "Computer Scientist",
        title2: "Cognitive Scientist",
        title3: "Artifical Intelligence",
        title4: "Neural Networking",
    },
    {
        first_name: "Adi",
        last_name: "Shamir",
        link: 'https://en.wikipedia.org/wiki/Adi_Shamir'
        image_url1: "adishamir.jpeg",
        image_url2: "adishamir.jpeg",
        image_url3: "adishamir.jpeg",
        image_url4: "adishamir.jpeg",
        title1: "Cryographer",
        title2: "Computer Scientist",
        title3: "Cryptanalyst",
        title4: "Zero Knowledge Proofs",
    },
    {
        first_name: "Kurt",
        last_name: "Gödel",
        link: 'https://en.wikipedia.org/wiki/Kurt_G%C3%B6del'
        image_url1: "kurtgodel.jpeg",
        image_url2: "kurtgodel.jpeg",
        image_url3: "kurtgodel2.jpeg",
        image_url4: "kurtgodel2.jpeg",
        title1: "Mathematician",
        title2: "Logician",
        title3: "Physicist",
        title4: "Analytical Philosophy",
    },
    {
        first_name: "Musa",
        last_name: "al-Khwarizmi",
        link: 'https://en.wikipedia.org/wiki/Muhammad_ibn_Musa_al-Khwarizmi',
        image_url1: "musaalkhwarizmi.jpeg",
        image_url2: "musaalkhwarizmi.jpeg",
        image_url3: "musaalkhwarizmi2.jpeg",
        image_url4: "musaalkhwarizmi2.jpeg",
        title1: 'Mathematician',
        title2: 'Algorithms',
        title3: 'Astronomer',
        title4: 'Polymath',
    },
    {
        first_name: "Pāṇini",
        last_name: "",
        link: 'https://en.wikipedia.org/wiki/P%C4%81%E1%B9%87ini',
        image_url1: "panini.jpeg",
        image_url2: "panini.jpeg",
        image_url3: "panini.jpeg",
        image_url4: "panini.jpeg",
        title1: 'Grammarian',
        title2: 'Philologist',
        title3: 'Linguist',
        title4: 'Morphological Analyst'
    },
    {
        first_name: "Ismail",
        last_name: "al-Jazari",
        link: 'https://en.wikipedia.org/wiki/Ismail_al-Jazari',
        image_url1: "ismailaljazari.jpeg",
        image_url2: "ismailaljazari.jpeg",
        image_url3: "ismailaljazari2.jpeg",
        image_url4: "ismailaljazar3.jpeg",
        title1: 'Mechanical Engineer',
        title2: 'Mathematician',
        title3: 'Machinery Architect',
        title4: 'Polymath'
    },
    {
        first_name: "Susan L.",
        last_name: "Graham",
        link: 'https://en.wikipedia.org/wiki/Susan_L._Graham',
        image_url1: "susanlgraham.jpeg",
        image_url2: "susanlgraham2.jpeg",
        image_url3: "susanlgraham3.jpeg",
        image_url4: "susanlgraham4.jpeg",
        title1: 'Computer Scientist',
        title2: 'Mathematician',
        title3: 'Systems Developer',
        title4: 'Language Design',
    },
    {
        first_name: "Gottfried",
        last_name: "Leibniz",
        link: 'https://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz',
        image_url1: "gottfriedleibniz.jpeg",
        image_url2: "gottfriedleibniz2.jpeg",
        image_url3: "gottfriedleibniz3.jpeg",
        image_url4: "gottfriedleibniz4.jpeg",
        title1: 'Mathematician',
        title2: 'Philosopher',
        title3: 'Scientist',
        title4: 'Polymath'
    },
    {
        first_name: "Blaise",
        last_name: "Pascal",
        link: 'https://en.wikipedia.org/wiki/Blaise_Pascal',
        image_url1: "blaisepascal.jpeg",
        image_url2: "blaisepascal2.jpeg",
        image_url3: "blaisepascal3.jpeg",
        image_url4: "blaisepascal4.jpeg",
        title1: 'Mathematician',
        title2: 'Physicist',
        title3: 'Philosopher',
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