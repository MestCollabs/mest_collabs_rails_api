# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


=begin

App.create([
      {
        appname:  "MestCollabsAndroid",
        email:    "opokuagyemangcharles@gmail.com",
        password: "12345678"
      }

  ])


Post.create([
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      },
      {
        body:     "It's a good day in mest. I am glad I came here",
        picture:  "https://www.google.com",
        mester_id: 1
      }
  ])

Company.create([{
    name: "Asoriba",
    description: "Next Level church mangaement app",
    logo: "logoUrl",
    email: "asoriba@asoriba.com",
    website: "https://www.asoriba.com",
    phone: "+233145678902",
    angel: "angelUrl",
    crunchcase: "crunchcaseUrl",
    twitter: "@asoriba",
    facebook: "facebookUrl",
    linkedin: "linkedinUrl"

  }])


    Feed.create([
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          },
          {
            body:     "It's a good day in mest. I am glad I came here",
            picture:  "https://www.google.com",
            mester_id: 1
          }
      ])
=end

=begin
Company.create([
  {
        name: "Ampersand",
        tagline: "Connecting people & technology",

        description: "Ampersand Technologies Ltd is a
                      software consultancy company that
                      builds customized software solutions
                      for individuals & businesses. We have
                      our own products such as Wedlocker,
                      an online wedding vendor directory and
                      Car Care, a mobile application for car
                      owners to maintain their cars. We are
                      set out to make systems and behaviors
                      more efficient using technology.",

        logo: "https://s26.postimg.org/nvzgbeow9/ampersand_logo-1.png",
        email: "team@ampersandllc.com",
        website: "https://www.ampersandllc.co",
        phone: "",
        angel: "",
        crunchcase: "",
        twitter: "https://twitter.com/AmpersandTechno",
        facebook: "https://web.facebook.com/ampersandtech/",
        linkedin: "https://gh.linkedin.com/in/ampersand-llc"

      },

      {
        name: "Asoriba",
        tagline: "Effective church administration and seamless member engagement",
        description: "Asoriba is a web and mobile application that enables effective church administration for leaders and seamless engagement with members.",
        logo: "https://s26.postimg.org/x6bkexzm1/MESTAsoriba-300x150.png",
        email: "nana@asoriba.com",
        website: "https://www.asoriba.com",
        phone: "",
        angel: "https://angel.co/asoriba",
        crunchcase: "https://www.crunchbase.com/organization/asoriba",
        twitter: "https://twitter.com/asoribaapp",
        facebook: "https://web.facebook.com/asoribaapp",
        linkedin: "https://gh.linkedin.com/in/asoriba-app"

      },

      {
        name: "Beam",
        tagline: "Get things done back home in Ghana",
        description: "Beam is a concierge service that serves the needs of Ghanaians abroad. We help you choose and deliver gifts to loved ones, pay hospital bill and school fees, and check up on your construction project in Ghana.",
        logo: "https://s26.postimg.org/zdft2v4w9/MESTBeam_At_DEMOAfrica-300x150.png",
        email: "gerald@beamcrew.com",
        website: "",
        phone: "",
        angel: "",
        crunchcase: "",
        twitter: "",
        facebook: "",
        linkedin: ""

      },

      {
        name: "Devless",
        tagline: "Develop Less",
        description: "Devless is a Back-end as a Service used by Developers to rapidly
                      prototype and develop scalable web, mobile and IOT applications and with ease.Our platform provides provides backend functionality (such as authentication, push notification, user management, search, etc.) of your application as plug and play modules that you can integrate into your application so you do not have to write code to build them. With Devless you could focus more on what matters most, saving     you time and cost. Devless is open source, could be installed on any server of your choice and customized to the needs of your application.",
        logo: "https://s26.postimg.org/a9yqiv79l/devless_high_res-300x88.png",
        email: "info@devless.io",
        website: "http://devless.io",
        phone: "",
        angel: "https://angel.co/devless",
        crunchcase: "https://www.crunchbase.com/organization/devless",
        twitter: "https://twitter.com/devlessio",
        facebook: "https://web.facebook.com/devless.io",
        linkedin: "https://gh.linkedin.com/company/devless"

      },
      {
        name: "Flippy Campus",
        tagline: "The Ultimate Campus Experience",
        description: "Flippy Campus is an app that puts a student’s entire campus experience on his phone. On Flippy Campus, students can get notices and announcements from their department, hall or social groups on campus. Students can also connect with their friends on campus as well as people in other schools.",
        logo: "https://s26.postimg.org/6f0edeufd/MESTFlippyCampus-300x150.png",
        email: "teamflippy@gmail.com",
        website: "http://www.flippycampus.co",
        phone: "",
        angel: "https://angel.co/flippy-campus",
        crunchcase: "https://www.crunchbase.com/organization/flippy-campus",
        twitter: "https://twitter.com/flippy_campus",
        facebook: "",
        linkedin: "https://www.linkedin.com/company/flippy-campus"

      },
      {
        name: "Ghalani",
        tagline: "Seamless farm management",
        description: "Ghalani provides a mobile and web-based ERP solution designed for the contract farming sector that integrates all agricultural supply chain processes seamlessly. We help fast growing contract farming schemes scale their farming operations. We do this through a farm and labour management software that helps contractors efficiently manage large number of farmers to improve productivity and reduce risks.",
        logo: "",
        email: "info@ghalani.com",
        website: "",
        phone: "",
        angel: "",
        crunchcase: "",
        twitter: "",
        facebook: "",
        linkedin: ""

      },
      {
        name: "Cocktail Insights",
        tagline: "A social media analytics and publishing platform",
        description: "A social media analytics and marketing tool enabling eCommerce businesses and merchants maximize the returns of their social media marketing.",
        logo: "https://s26.postimg.org/3jnb6jqfd/Logo2.png",
        email: "team@cocktailinsights.com",
        website: "https://www.cocktailinsights.com/",
        phone: "",
        angel: "https://angel.co/cocktail-insights",
        crunchcase: "https://www.crunchbase.com/organization/cocktail-insights",
        twitter: "https://twitter.com/cocktailinsight",
        facebook: "https://www.facebook.com/cocktailinsights",
        linkedin: "https://gh.linkedin.com/in/cocktail-insights"

      },
      {
        name: "Kudobuzz",
        tagline: "Boost Sales with Social Reviews",
        email: "team@kudobuzz.com",
        description: "Kudobuzz is a customizable tool that allows e-commerce websites to feature select positive social testimonials & product / services reviews on their websites and interact directly with the people who are talking about them. Our machine-learning algorithms filter and categorize a brand’s social buzz in real time, to accurately identify praise, flag discontent and highlight potential for follow-up, ensuring brands don’t miss an opportunity to engage their customers.",
        logo: "https://s26.postimg.org/p8m7aesnd/MESTKudobuzz-300x150.jpg",
        website: "http://www.kudobuzz.com",
        phone: "",
        angel: "https://angel.co/kudobuzz-1",
        crunchcase: "https://www.crunchbase.com/organization/kudobuzz",
        twitter: "",
        facebook: "https://web.facebook.com/kudobuzz",
        linkedin: "https://www.linkedin.com/company/kudobuzz"

      },
      {
        name: "Leti Arts",
        email: "all@letigames.com",
        tagline: "Mobile Gaming & Digital Media",
        description: "Leti Arts (formerly Leti Games) is a digital media company leading the next wave of Africa’s rich storytelling tradition. Our vision is to shape a new generation of uniquely African content by creating engaging comic and games that pay homage to the continent’s greatest legends. Our content portfolio borrows from fables told by the Zulu, Massai, Ashanti and more to craft new tales appealing to a modern audience. Using exciting, interactive, mobile-driven mediums, our digital content will reignite the imaginations of children and adults alike.",
        logo: "https://s26.postimg.org/b3ge8ljm1/LETI.jpg",
        website: "http://www.letiarts.com",
        phone: "",
        angel: "",
        crunchcase: "https://www.crunchbase.com/organization/leti-arts",
        twitter: "https://twitter.com/letiarts",
        facebook: "https://web.facebook.com/LetiArts",
        linkedin: "https://www.linkedin.com/company/leti-arts"

      },
      {
        name: "Loystar",
        tagline: "Build customer loyalty that lasts",
        email: "ayo@loystar.co",
        description: "Loystar is a merchant-facing mobile app that helps merchants keep their customers coming back using loyalty programs. Customers are able to earn points by spending at merchant stores, and the earned points can be redeemed for a deal or reward decided by the merchant. With the mobile app, merchants are able to easily design and run these loyalty programs for their business.",
        logo: "https://s26.postimg.org/662tnhhmx/loystar_logo_fb-150x150.png",
        website: "https://www.loystar.co",
        phone: "",
        angel: "",
        crunchcase: "https://www.crunchbase.com/organization/loystar",
        twitter: "",
        facebook: "https://web.facebook.com/LoystarApp/",
        linkedin: "https://www.linkedin.com/company/loystar-inc?trk=biz-companies-cym"

      },
      {
        name: "meQasa",
        tagline: "The Easiest Way to Rent, Buy, and Sell Property in Ghana",
        email: "all@meqasa.com",
        description: "Online real estate marketplace that provides access to real estate with all pertinent information and images attached. Real estate developments of all categories are covered, from daily leases to two-year rent contracts and sales as well. Home owners and real estate agents can list easily on the site or from their android smart phones at their own convenience with ease. meQasa provides a house seeker with, in addition to the required information provided by real estate    development representatives (agents and owners), information on locations of essential service providers in proximity to each listing viewed. The goal is to provide all information necessary for making a final buying decision so a seeker is close to closing the deal by the time of viewing the property offline.",
        logo: "https://s26.postimg.org/6le3gi3k9/image.png",
        website: "https://meqasa.com",
        phone: "",
        angel: "",
        crunchcase: "",
        twitter: "https://twitter.com/meqasa",
        facebook: "https://web.facebook.com/Meqasa",
        linkedin: "https://www.linkedin.com/company/meqasa-ltd-meqasa-com-"

      },
      {
        name: "AF Radio",
        tagline: "Rediscover Radio",
        email: "info@playonradio.com",
        description: "AF Radio is an application the helps radio lovers, enjoy radio content they know and love, while discovering more. It also helps helps the consumers to interact with the radio stations while allowing the radio stations to get feedback on how the content they are producing is faring with their consumers, and algo get indepth information about who exactly their listeners are.",
        logo: "https://s26.postimg.org/yzjj0dr49/web_logo.png",
        website: "http://afradio.co",
        phone: "",
        angel: "",
        crunchcase: "",
        twitter: "https://twitter.com/AFRadioHQ",
        facebook: "https://web.facebook.com/AFRadioHQ/",
        linkedin: ""

      },
      {
        name: "Nandimobile",
        tagline: "Empowering Connections",
        email: "all@nandimobile.com",
        description: "Nandimobile provides on-demand services that enable businesses to connect with their customers on their mobile phones in a way that can easily be managed and monitored.",
        logo: "https://s26.postimg.org/xyjab9a4p/MESTNandi_Mobile-300x150.jpg",
        website: "http://nandimobile.com",
        phone: "",
        angel: "",
        crunchcase: "https://www.crunchbase.com/company/nandimobile",
        twitter: "https://twitter.com/Nandimobile",
        facebook: "https://web.facebook.com/Nandimobile",
        linkedin: "http://www.linkedin.com/company/nandimobile-ltd"

      },
      {
        name: "PollAfrique",
        tagline: "Reaching Africa Seamlessly",
        email: "all@pollafrique.com",
        description: "PollAfrique is a web & mobile solution designed to facilitate primary market and social research in Africa, by allowing respondents to participate in incentive surveys via SMS, USSD, IVR, and e-mail channels. PollAfrique provides the convenience of a wide pool of African respondents, enabling researchers to reach targeted demographics, thereby improving overall response rates in the administration of surveys.",
        logo: "https://s26.postimg.org/c0mthgv49/MESTPoll_Afrique-150x150.png",
        website: "http://www.pollafrique.com",
        phone: "",
        angel: "",
        crunchcase: "https://www.crunchbase.com/organization/pollafrique",
        twitter: "https://twitter.com/Poll_Afrique",
        facebook: "https://www.facebook.com/PollAfrique",
        linkedin: ""

      },
      {
        name: "RetailTower",
        tagline: "Your Store Everywhere",
        email: "all@retailtower.com",
        description: "RetailTower creates e-commerce marketing software that helps online merchants promote their products and drive traffic through online sales channels. RetailTower serves more than 10,000 online retailers, integrates with leading e-commerce platforms and comparisonshopping engines. We’re also a Preferred Solutions Provider for Amazon product Ads.",
        logo: "https://s26.postimg.org/lmkzbibnt/MESTRetail_Tower-300x150.jpg",
        website: "http://www.retailtower.com",
        phone: "",
        angel: "https://angel.co/retailtower",
        crunchcase: "https://www.crunchbase.com/organization/retailtower",
        twitter: "https://twitter.com/retailtower",
        facebook: "https://web.facebook.com/retail.tower",
        linkedin: ""

      },
      {
        name: "SynCommerce",
        tagline: "Multi-Channel Inventory and Order Management",
        email: "all@syncommerceapp.com",
        description: "SynCommerce is the easiest way for online merchants to manage inventory and process orders across multiple sales channels from a centralized dashboard.",
        logo: "https://s26.postimg.org/j6j5xntl5/MESTSyn_Commerce-300x150.png",
        website: "https://app.syncommerceapp.com",
        phone: "",
        angel: "",
        crunchcase: "https://www.crunchbase.com/product/syncommerce",
        twitter: "https://twitter.com/SynCommerce",
        facebook: "https://web.facebook.com/syncommerce",
        linkedin: "https://www.linkedin.com/company/syncommerce"

      },
      {
        name: "Tress",
        tagline: "Discover and Share Amazing Hairstyles",
        email: "founders@tressapp.co",
        description: "A social community mobile app for black women to find hairstyle inspiration. In addition , women have access to detailed information about each hairstyle, such as the name and location of the salon/stylist that had the hair done, the products used to achieve the desired result and a price range for having it done.",
        logo: "https://s26.postimg.org/uk5p8v43t/Tress-_Logo-300x225.png",
        website: "www.tressapp.co",
        phone: "",
        angel: "https://angel.co/tress",
        crunchcase: "https://www.crunchbase.com/organization/tress",
        twitter: "https://twitter.com/Tress_App",
        facebook: "https://web.facebook.com/TressApp.co/",
        linkedin: "https://www.linkedin.com/company/Tress"

      },
      {
        name: "TroTro Tractor",
        tagline: "Get your tractor like a trotro",
        email: "info@trotrotractor.com",
        description: "A service that matches the tractors and tractor operators in Ghana to smallholder farmers. This is essential because Ghana has a large deficit of tractors, so it is important to maximize efficient usage.",
        logo: "https://s26.postimg.org/eafj5ytft/trtrotractor-logo.gif",
        website: "",
        phone: "",
        angel: "",
        crunchcase: "",
        twitter: "",
        facebook: "",
        linkedin: ""

      },
      {
        name: "Vestracker",
        tagline: "Software Intelligence for the Freight Forwarding Industry",
        email: "all@vestracker.com",
        description: "Vestracker is the information management service for the freight forwarding industry. We make acquiring, sharing and managing freight information easy and accessible. For both small and multinational freight forwarders, the problem is clear; they spend valuable time and resources inefficiently tracking shipments, often across several shipping lines with multiple stakeholders involved in each transaction. Vestracker automates this process and makes it more efficient.",
        logo: "https://s26.postimg.org/yj2wrosqx/MESTVestracker-300x150.png",
        website: "https://www.vestracker.com/start",
        phone: "",
        angel: "",
        crunchcase: "",
        twitter: "https://twitter.com/vestracker",
        facebook: "",
        linkedin: ""

      }


  ])
=end

def create_n_users(n, model_name, name, email, profile_picture)
  count  = 1
  mail = ["meltwarer.org", "gmail.com", "yahoo.com", "hotmail.com"]
  n.times do
    model_name.create!([{
        name.to_sym => "user_#{count}",
        email.to_sym => "user_#{count}@#{mail.sample}",
        profile_picture.to_sym => "https://s26.postimg.org/uk5p8v43t/Tress-_Logo-300x225.png"
      }])
      count += 1
  end
end


def create_n_feeds(n, model_name, body, picture, mest_power)
  count  = 1
  mester_count = Mester.first.id.to_i
  power = [true, false]
  mester_ids = []
  Mester.all.count.times do
    mester_ids.push(mester_count)
    mester_count += 1
  end
  n.times do
    model_name.create!([{
        body.to_sym => "feed number_#{count} for the body field",
        picture.to_sym => "https://s26.postimg.org/j6j5xntl5/MESTSyn_Commerce-300x150.png",
        mester_id: mester_ids.sample,
        mest_power.to_sym => power.sample
      }])
      count += 1
  end
end

def create_n_feedbacks(n)
  count  = 1
  mester_count = Mester.first.id.to_i
  mester_ids = []
  Mester.all.count.times do
    mester_ids.push(mester_count)
    mester_count += 1
  end
  feed_count = Feed.first.id.to_i
  feed_ids = []
  Feed.all.count.times do
    feed_ids.push(feed_count)
    feed_count += 1
  end
  n.times do
    Feedback.create!([{
        body: "feedback number_#{count} for the body field",
        mester_id: mester_ids.sample,
        feed_id: feed_ids.sample
      }])
      count += 1
  end
end

# count = Mester.first.id
# country = ["Ghana", "Nigeria", "Kenya", "South Africa"]
# Mester.all.count.times do
#   Profile.create!([{
#     mester_id: count,
#     country: country.sample,
#     phone_number: "9084783678"
#     }])
#   count += 1
# end


#create_n_users(53, Mester, "name", "email", "profilePicture")
#create_n_feeds(200, Feed, "body", "picture", "mest_power")
#create_n_feedbacks(300)
