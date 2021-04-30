import 'package:flutter/foundation.dart';

class NewsModel{
  final int id;
  final String title,description,image,url;
  NewsModel({@required this.id, @required this.title, @required this.description, @required this.image, @required this.url});
}

class NewsList{
  final List<NewsModel> _newsList = [
    NewsModel(
        id: 1,
      title: "Kantupur ",
      description: "Kantipur Publications Pvt. Ltd is Nepal’s largest and fastest growing media company. It provides news, features, views and lifestyle content through five standalone print outlets: two national dailies (the Kantipur daily and The Kathmandu Post), two weeklies (Saptahik and Nepal) and one monthly (Nari). The company firmly believes in the people’s right to right information and is highly respected in the Nepali market for its authentic and impartial news, in-depth reporting, analytical content, nuanced portrayal of people’s voices and investigative journalism.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/67832925_10158602971566754_8661265666550005760_n.png?_nc_cat=1&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=bVfMKIf5wxMAX9HZK2v&_nc_ht=scontent.fktm10-1.fna&oh=9088096705086d643fd848af33dca749&oe=60812412",
      url: "https://ekantipur.com/"
    ),
    NewsModel(
        id: 2,
      title: "The Kathmandu Post",
      description: "The Kathmandu Post, the country’s leading English-language daily, was launched in February 1993 as Nepal’s first private-run English-language broadsheet. The Post is the second-most widely read paper in Nepal after its sister publication, the Nepali-language Kantipur daily.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/66666999_1054794124710450_7903257595832434688_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=8qBSpumahKAAX_Z_sKh&_nc_ht=scontent.fktm10-1.fna&oh=1ffca54637d1638859fb31f8d1cec07c&oe=60810A5F",
      url: "https://kathmandupost.com/"
    ),
    NewsModel(
        id: 3,
      title: "Annapurna Post",
      description: "Annapurna Media Network (AMN) is a fastest expanding and leading multi-media organization of Nepal. AMN works in enabling social leadership and economic development through responsible media practices. It believes in interconnecting the core functional areas of the society and nation. AMN has always believed that media is a mirror of the society which reflects the past, explains the present and reveals the future.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/69138843_2657343377667549_7758667350013902848_n.jpg?_nc_cat=1&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=J-LK0sdSq9YAX8WYgb9&_nc_ht=scontent.fktm10-1.fna&oh=760d2279c57ed04158f7d65dce1df496&oe=60842EF6",
      url: "http://annapurnapost.com/"
    ),// http
    NewsModel(
        id: 4,
      title: "Nagarik News",
      description: "नेपाल रिपब्लिक मिडिया (प्रा) लि.ले नेपाली भाषामा नागरिक राष्ट्रिय दैनिक (गुणराज लुइँटेलको सम्पादकत्वमा) काठमाडौँ, विराटनगर, नेपालगञ्ज, पोखरा र बुटवलबाट एक साथ प्रकाशन गर्दै आएको छ।",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/14567_786753674677319_294022786_n.png?_nc_cat=106&ccb=1-3&_nc_sid=174925&_nc_ohc=fHKgm2-KxlEAX99Ngde&_nc_ht=scontent.fktm10-1.fna&oh=d545d3bf8a296989e1e3a1c007be51aa&oe=60822153",
      url: "https://nagariknews.nagariknetwork.com/"
    ),
    NewsModel(
        id: 5,
      title: "Naya Patrika",
      description: "One of the top news portal in Nepal, Trusted news portal of Nepal",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t31.0-8/20507436_798194100347290_4146735156848570236_o.png?_nc_cat=1&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=hC5MRdLoWMkAX_XrRqB&_nc_oc=AQmTR4dzN3kkK5Kh33O4kusR7TOquZQ9DLS5a4QFBrRRK28bP6TReCnwRP6uApYSTuA&_nc_ht=scontent.fktm10-1.fna&oh=e7f92b6ea119703fc36f9446906f3fb8&oe=6081099E",
      url: "http://www.nayapatrikadaily.com/"
    ),
    NewsModel(
        id: 6,
      title: "The Himalayan Times",
      description: "International Media Network Nepal (Pvt) Ltd found its beginning in 2001 with its flagship newspaper The Himalayan Times. We have grown today to become Nepal's largest selling English Daily.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/541498_637021876337152_37938133_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=YkRw7BT3VKQAX_Gi9Rr&_nc_ht=scontent.fktm10-1.fna&oh=15d094453641793e4661658da5fa3a11&oe=60832CBD",
      url: "https://thehimalayantimes.com/"
    ),
    NewsModel(
        id: 7,
      title: "Karobar Economic Daily",
      description: "Established in 2009, the first economic daily, we pledge with our readers that we will raise every issue related to the people to make Karobar useful for every Nepali and not just remain a newspaper for the economic/business community only.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/103637121_10157321348425732_7893145404489559548_n.png?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=bmk9_Z7aYNEAX-EYV1s&_nc_ht=scontent.fktm10-1.fna&oh=60bb124c8a0e8458201524ae70c1c43f&oe=60846148",
      url: "https://www.karobardaily.com/"
    ),
    NewsModel(
        id: 7,
      title: "Gorkhapatra",
      description: "One of the top news portal in Nepal, Trusted news portal of Nepal",
      image: "https://play-lh.googleusercontent.com/hB_F2IG9p1RooZ37SSZndWlMKjpJhDSix6w5iGYXueu_3Xi4bLrMgjLuO7rqrwLw-J8",
      url: "https://gorkhapatraonline.com/"
    ),
    NewsModel(
        id: 8,
      title: "Gorkhapatra",
      description: "आर्थिक अभियान राष्ट्रिय दैनिक' न्यू बिजनेस एज प्रा लि द्वारा प्रकाशित अर्थ-राजनीतिक राष्ट्रिय दैनिक हो । यसमा उद्यमी-व्यवसायी आर्थिक नीति निर्माता आर्थिक एंव वित्तीय क्षेत्रका विश्लेषक एवं अनुसनधान पुँजी र वस्तु बजारका लगानीकर्तादेखि विकासकर्मी विद्यार्थी र सर्वसाधारणसम्मका लागि उपयोगी सामग्री प्रकाशित हुन्छन् । यी सामग्रीहरुमा देश विदेशका अर्थ-राजनीतिक समचारहरु नीति एंव बजार विश्लेषण र वरिष्ठ विज्ञ एंव क्षेत्रगत ज्ञाताहरुका लेख-रचनाहरु पर्दछन् ।",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/67617121_2436406729731796_6464469059483205632_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=c47ATrY2vTQAX_6llfH&_nc_ht=scontent.fktm10-1.fna&oh=8a16daf06e4b26f75346b0630c151222&oe=6083C8A9",
      url: "https://www.abhiyandaily.com/"
    ),
    NewsModel(
        id: 9,
        title: "Nepali Times",
      description: "Nepal Times is an online media that envisions itself an online television with voice for the voiceles as its slogan.We aim to reach out the unprivileged groups unreported news, and make them available for the nation as well as world to watch.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/21762245_146486382621549_8090734340522692436_n.jpg?_nc_cat=1&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=Ig7fAZv12mEAX96mW3K&_nc_ht=scontent.fktm10-1.fna&oh=93fdde0f853ab245ccc052a429f6b910&oe=60832A88",
      url: "https://www.nepalitimes.com/"
    ),
    NewsModel(
        id: 10,
        title: "Nepal Samacharpatra",
      description: "Frequently updated News of Nepal. Fresh News of nation, world, technology, entertainment, economy, lifestyle, sports, culture, etc.",
      image: "https://www.newsofnepal.com/wp-content/uploads/2019/06/newsofnepal-epaper.jpg",
      url: "https://www.newsofnepal.com/"
    ),
    NewsModel(
        id: 11,
        title: "Arghakhanchi.com",
      description: "Arghakhanchi Media House Private Limited \"Arghakhanchi.Com\" ! News For All From Everywhere ! The best News Portal of Nepal.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/11109810_1003442259686835_4743072572017920490_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=9S8wpni8ohIAX9icNoW&_nc_ht=scontent.fktm10-1.fna&oh=cd9f251875bef5857fabb463c6b86a32&oe=6082D786",
      url: "https://www.arghakhanchi.com/"
    ),
    NewsModel(
        id: 12,
        title: "Sourya Online",
      description: "One of the top news portal in Nepal, Trusted news portal of Nepal.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/151901534_2152766491526659_8378757577137952955_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=8631f5&_nc_ohc=k4EEkGTg7BsAX_5a2zy&_nc_ht=scontent.fktm10-1.fna&oh=a217b4b0c23dc58b8ce38d362cb0c803&oe=608206E6",
      url: "https://www.souryaonline.com/"
    ),
    NewsModel(
        id: 13,
        title: "Rising Nepal",
      description: "One of the top news portal in Nepal, Trusted news portal of Nepal.",
      image: "https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/67706525_2302933299821481_3440620377233948672_n.png?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=qjxR5iBhB4gAX_lJGDI&_nc_ht=scontent.fktm10-1.fna&oh=77f482b7dbaace9a29d625a12b6a2a5b&oe=6082E17F",
      url: "https://risingnepaldaily.com/"
    ),
  ];

  List<NewsModel> get newsList => _newsList;
}