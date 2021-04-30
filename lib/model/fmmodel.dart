import 'package:audio_service/audio_service.dart';


class MediaLibrary {
  final _items = <MediaItem>[

    //Old Hindi Lists
    MediaItem(
      id: "http://broadcast.radiokantipur.com:7248/stream",
      album: "Hindi",
      title: "Radio Kantipur",
      artist: "",
      artUri: Uri.parse('https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg'),
    ),
    MediaItem(
      id: "http://peridot.streamguys.com:7150/Mirchi",
      album: "Hindi",
      title: "Radio Mirchi 98.3 FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/cVVcTMJBcm.png'),
    ),
    MediaItem(
      id: "http://103.16.47.70:7222/;stream.mp3",
      // id: "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3",
      album: "Hindi",
      title: "Hungama - 90's Super Hits online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/sgjkrL4YeY.jpeg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/vividhbharti/icecast.audio",
      album: "Hindi",
      title: "Vividh Bharti online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/jgstA2jnFQ.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/sc-bb/icecast.audio",
      album: "Hindi",
      title: "92.7 Big FM online",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/big-fm-5001.png'),
    ),
    MediaItem(
      id: "http://s5.voscast.com:8216/;stream.mp3",
      album: "Hindi",
      title: "Non Stop Hindi online",
      artist: "",
      artUri: Uri.parse('https://static.tuneyou.com/images/logos/500_500/37/14337/NonStopHindi_7.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/radio-city/icecast.audio",
      album: "Hindi",
      title: "Radio City 91.1 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/radiocity9911.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungama90/icecast.audio",
      album: "Hindi",
      title: "Radio Hungama 90s Once Again",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/Hungama90sOnceAgain.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_telugu_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio Air Telugu",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/air-telugu.jpg'),
    ),
    MediaItem(
      id: "https://str2b.openstream.co/1451",
      album: "Hindi",
      title: "Suryan FM",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/suryanradio.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_tamil_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio Air Tamil",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/air-tamil.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/non_stop_hindi_radio/icecast.audio",
      album: "Hindi",
      title: "Non Stop Hindi Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/non-stop-hindi-india.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_marathi_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio Air Marathi",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/airmumbaiasmita.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_bangla_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio Air Bangla",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/air-bangla.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/bollywoodandbeyond/icecast.audio",
      album: "Hindi",
      title: "Bollywood Radio and Beyond",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/bollywood-beyond11.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_punjabi_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio Air Punjabi",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/air-punjabi.jpg'),
    ),
    MediaItem(
      id: "https://stream.zenolive.com/sgkeutfbaw5tv",
      album: "Hindi",
      title: "Radio Namkin",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/RadioNamkin.jpg'),
    ),
    MediaItem(
      id: "https://node-04.zeno.fm/87xam8pf7tzuv.aac?rj-ttl=5&rj-tok=AAABdd9L970AyueqcJw1yBsdCA",
      album: "Hindi",
      title: "Radio Lata Mangeshkar",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/RadioCity-LataMangeshkarRadio2222.png'),
    ),
    MediaItem(
      id: "https://prclive4.listenon.in/Hindi",
      album: "Hindi",
      title: "Radio City Hindi",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/City-Hindi.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_assamese_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio Air Assamese",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/air-assamese.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_north/icecast.audio",
      album: "Hindi",
      title: "All India Radio North Eastern Service",
      artist: "",
      artUri: Uri.parse('https://onlineradiofm.in/assets/image/radio/180/north-eastern-service.jpg'),
    ),
    MediaItem(
      id: "https://stream.zeno.fm/60ef4p33vxquv",
      album: "Hindi",
      title: "Hits Of Bollywood",
      artist: "",
      artUri: Uri.parse('https://cdn.onlineradiobox.com/img/l/1/3791.v3.png'),
    ),
    MediaItem(
      id: "https://scraper2.onlineradiobox.com/in.retrobollywood?l=1615529721",
      album: "Hindi",
      title: "Hits Of Bollywood",
      artist: "",
      artUri: Uri.parse('https://cdn.onlineradiobox.com/img/l/1/3791.v3.png'),
    ),
    MediaItem(
      id: "https://eu8.fastcast4u.com/proxy/clyedupq/?mp=/1",
      album: "Hindi",
      title: "Suno 1024 FM",
      artist: "",
      artUri: Uri.parse('https://radiosindia.com/images/suno1024fm.jpg'),
    ),
    MediaItem(
      id: "https://spice988fm.radioca.st/stream",
      album: "Hindi",
      title: "Spice fm uk FM",
      artist: "",
      artUri: Uri.parse('https://radiosindia.com/images/spicefmuk.jpg'),
    ),
    MediaItem(
      id: "https://www.liveradio.es/http://streaming.radio.co/s3aaa20a5e/listen",
      album: "Hindi",
      title: "Radio umang",
      artist: "",
      artUri: Uri.parse('https://radiosindia.com/images/radioumang.jpg'),
    ),
    MediaItem(
      id: "https://node-10.zeno.fm/g42tzhe29f8uv?rj-ttl=5&rj-tok=AAABeCUhADMA3SSZu6uvTUEOEQ",
      album: "Hindi",
      title: "Radio Pragya Kushinagar",
      artist: "",
      artUri: Uri.parse('Radio Pragya Kushinagar'),
    ),
    MediaItem(
      id: "https://node-10.zeno.fm/g42tzhe29f8uv?rj-ttl=5&rj-tok=AAABeCUhADMA3SSZu6uvTUEOEQ",
      album: "Hindi",
      title: "Radio Pragya Kushinagar",
      artist: "",
      artUri: Uri.parse('Radio Pragya Kushinagar'),
    ),
    MediaItem(
      id: "https://playerservices.streamtheworld.com/api/livestream-redirect/OLIVE1063.mp3",
      album: "Hindi",
      title: "Radio olive 106.3 FM",
      artist: "",
      artUri: Uri.parse('https://radiosindia.com/images/radioolive.jpg'),
    ),
    MediaItem(
      id: "https://prclive4.listenon.in/Ishq",
      album: "Hindi",
      title: "ISHQ 104.8 FM online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/yu6hkdagcyxv.png'),
    ),
    MediaItem(
      id: "http://bbcwssc.ic.llnwd.net/stream/bbcwssc_mp1_ws-hinda",
      album: "Hindi",
      title: "BBC Hindi - नमस्कार भारत online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/NeWjCrQbjG.png'),
    ),
    MediaItem(
      id: "http://node-14.zeno.fm/1k0y9f0cm0quv?rj-ttl=5&rj-tok=AAABeCXe9DkA80nQrgHjLZTjjA",
      album: "Hindi",
      title: "Bollywood Punjabi Radio online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/nf5dx9fjd5xa.png'),
    ),
    MediaItem(
      id: "https://samcloud.spacial.com/api/listen?br=128000%2Cany&f=aac%2Cany&m=sc&rid=156742&sid=81425",
      album: "Hindi",
      title: "Radio City Bangalore 91.1 FM online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/78qbackzanny.png'),
    ),
    MediaItem(
      id: "http://node-07.zeno.fm/rqqps6cbe3quv",
      album: "Hindi",
      title: "New Hits Of Bollywood online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/ukypvujqhlcx.jpg'),
    ),
    MediaItem(
      id: "http://shoutcast.beamfm.net:8512/;",
      album: "Hindi",
      title: "Beam FM - Adult Hits India online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/ca7wz3ppppah.jpg'),
    ),
    MediaItem(
      id: "http://hoth.alonhosting.com:1080/;",
      album: "Hindi",
      title: "BollyHits Radio online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/gfwvyqspah2g.png'),
    ),
    MediaItem(
      id: "http://prclive1.listenon.in:8808/",
      album: "Hindi",
      title: "Radio City Love Guru online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/h469e3gf6gnj.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_pune_fm/icecast.audio",
      album: "Hindi",
      title: "AIR Pune FM online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/arteb6jjjwmj.jpg'),
    ),
    MediaItem(
      id: "http://radio.bongonet.net:8012/;",
      album: "Hindi",
      title: "Radio Hindi International",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/zwykjwcxphxx.jpeg'),
    ),
    MediaItem(
      id: "http://cassini.shoutca.st:8601/;",
      album: "Hindi",
      title: "OYE INDIA",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/yewd7jcfatcv.png'),
    ),
    MediaItem(
      id: "https://stream.radio.co/s56e9f6a10/listen",
      album: "Hindi",
      title: "Nammradio.com India",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/khcembjxgg5q.png'),
    ),
    MediaItem(
      id: "https://stream.radiojar.com/7pzbvyzb7a0uv",
      album: "Hindi",
      title: "Star Radio Tamil",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/rwkk3sah4wse.jpg'),
    ),
    MediaItem(
      id: "http://astro1.rastream.com/myfm?s=1404657093%3Fretry%3D0",
      album: "Hindi",
      title: "My FM India",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/xycqzz4qfxqa.png'),
    ),
    MediaItem(
      id: "https://playerservices.streamtheworld.com/api/livestream-redirect/SAM04AAC280_SC",
      album: "Hindi",
      title: "Radio City Classics",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/PnWNtQjNLJ.png'),
    ),
    MediaItem(
      id: "http://prclive1.listenon.in:9948/",
      album: "Hindi",
      title: "Radio City Tamil",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/QyAEUN7v9Q.jpg'),
    ),
    MediaItem(
      id: "http://149.56.195.94:8322/;",
      album: "Hindi",
      title: "Bol Punjabi Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/g3WhNTFt6q.jpg'),
    ),
    MediaItem(
      id: "http://node-22.zeno.fm/8kqd6dp18vzuv",
      album: "Hindi",
      title: "Madhur Sangeet",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/4khfhtxzcxcp.jpg'),
    ),
    MediaItem(
      id: "http://cassini.shoutca.st:8582/stream",
      album: "Hindi",
      title: "Amudham FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/g6pufeuexhqm.png'),
    ),
    MediaItem(
      id: "http://103.16.47.70:9555/;stream.mp3",
      album: "Hindi",
      title: "Hungama - Tamil Hits",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/KBR7VKBg3Q.jpeg'),
    ),
    MediaItem(
      id: "http://stream.zeno.fm/6n6ewddtad0uv",
      album: "Hindi",
      title: "Bollywood Gaane",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/ppqbgfej6skx.jpeg'),
    ),
    MediaItem(
      id: "http://s8.voscast.com:7020/;stream1476263274129/1",
      album: "Hindi",
      title: "Non Stop Punjabi Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/4jtAPzmY8N.png'),
    ),
    MediaItem(
      id: "http://gill.sukhpal.net:8000/;",
      album: "Hindi",
      title: "Desi Radio Hits",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/tk6xtdmta6sn.png'),
    ),
    MediaItem(
      id: "http://198.178.123.14:8216/;",
      album: "Hindi",
      title: "Kalighat Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/my7jnzczm5e2.jpeg'),
    ),
    MediaItem(
      id: "https://playerservices.streamtheworld.com/api/livestream-redirect/CLUBFMUAEAAC_SC",
      album: "Hindi",
      title: "Club FM - Kochi",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/m3s7wv2upg7u.png'),
    ),
    MediaItem(
      id: "http://prclive1.listenon.in:9302/",
      album: "Hindi",
      title: "Radio City Punjabi",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/3encxx6zt87x.jpg'),
    ),
    MediaItem(
      id: "http://shoutcast.beamfm.net:8504/;",
      album: "Hindi",
      title: "Beam FM - India",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/ejytebs3yuaw.png'),
    ),
    MediaItem(
      id: "http://eu1.reliastream.com:7103/stream",
      album: "Hindi",
      title: "Hindi Desi Bollywood Evergreen Hits",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/tdyvzqdftlwb.jpg'),
    ),
    MediaItem(
      id: "http://khasharyanvi.com:8000/live",
      album: "Hindi",
      title: "Khas Haryanvi",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/w7uf4q5yra2m.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_pune_radio/icecast.audio",
      album: "Hindi",
      title: "Air Pune",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/bu8skuctwhrf.jpg'),
    ),
    MediaItem(
      id: "http://node-06.zeno.fm/cm1fkgbv1ceuv",
      album: "Hindi",
      title: "Josh FM ",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/mhzpvfnsvta8.png'),
    ),
    MediaItem(
      id: "http://104.167.2.55:8099/stream;",
      album: "Hindi",
      title: "Hindi Desi Bollywood Evergreen Hits - Channel 3",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/gpx37kdlrswa.jpg'),
    ),
    MediaItem(
      id: "https://samcloud.spacial.com/api/listen?br=128000%2Cany&f=aac%2Cany&m=sc&rid=156742&sid=81425",
      album: "Hindi",
      title: "Radio One 94.3 FM ",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/dymxd6pkj3g8.jpeg'),
    ),
    MediaItem(
      id: "https://stream.zeno.fm/zu59ykebs2zuv",
      album: "Hindi",
      title: "radioBollyFM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/kfczmwswghz2.png'),
    ),
    MediaItem(
      id: "http://103.16.47.70:9666/live",
      album: "Hindi",
      title: "Hungama - Mehfil",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/Ex4H2UfRmw.png'),
    ),
    MediaItem(
      id: "http://janus.shoutca.st:8112/stream",
      album: "Hindi",
      title: "Shripad Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/static/images/radio-default.jpg'),
    ),
    MediaItem(
      id: "http://live.trusl.com:1160/;",
      album: "Hindi",
      title: "Shakthi 104.1 Tamil FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/x83w98epv98x.png'),
    ),
    MediaItem(
      id: "http://radiodhaakad.com:8000/live",
      album: "Hindi",
      title: "Radio Dhaakad",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/zr3cqsgpc5rp.png'),
    ),
    MediaItem(
      id: "http://prclive1.listenon.in:9292/;",
      album: "Hindi",
      title: "Radio City Hip Hop",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/fgeyccbmnvjn.jpg'),
    ),
    MediaItem(
      id: "http://94.130.113.214:8000/schizoid",
      album: "Hindi",
      title: "Schizoid - Psychedelic Trance",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/vyzC5pgk9P.png'),
    ),
    MediaItem(
      id: "http://174.36.206.197:8072/;",
      album: "Hindi",
      title: "3AFM - Hindi FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/wbyuvvraafdc.jpg'),
    ),
    MediaItem(
      id: "http://85.25.185.202:8134/stream",
      album: "Hindi",
      title: "Rangeela Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/qrhbglpgybju.png'),
    ),
    MediaItem(
      id: "http://node-27.zeno.fm/spm0t8gq45quv",
      album: "Hindi",
      title: "Aap Ki Aawaz",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/wmpddslhr7qk.png'),
    ),
    MediaItem(
      id: "https://samcloud.spacial.com/api/listen?br=128000%2Cany&f=aac%2Cany&m=sc&rid=156742&sid=81425",
      album: "Hindi",
      title: "Almighty Radio (IND)",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/s8dhrapxjkak.png'),
    ),
    MediaItem(
      id: "http://streaming01.x-6.nl:8000/;",
      album: "Hindi",
      title: "Radio Srinagar",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/rqqwknvraj4h.png'),
    ),
    MediaItem(
      id: "http://85.25.185.202:8055/;",
      album: "Hindi",
      title: "Radio Anardana Hindi",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/betkn3tedds2.jpg'),
    ),
    MediaItem(
      id: "http://148.72.210.73:8000/helloradio.ogg",
      album: "Hindi",
      title: "Hello Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/6furzpk68hff.png'),
    ),
    MediaItem(
      id: "http://janus.shoutca.st:9117/;",
      album: "Hindi",
      title: "Madhur Awaz",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/dyru7mkepytt.png'),
    ),
    MediaItem(
      id: "https://stream.zeno.fm/g36znmewrg0uv",
      album: "Hindi",
      title: "Golden Voice FM ",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/egjk4gjzvp4r.png'),
    ),
    MediaItem(
      id: "http://viadj.viastreaming.net:7084/;",
      album: "Hindi",
      title: "Psalms Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/ZZgkKdr9vM.png'),
    ),
    MediaItem(
      id: "http://stream.zeno.fm/crrvmrsmug0uv",
      album: "Hindi",
      title: "India Sings",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/vsefpdtchfbs.png'),
    ),
    MediaItem(
      id: "http://eu2.fastcast4u.com:4002/;",
      album: "Hindi",
      title: "Christian FM online",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/static/images/radio-default.jpg'),
    ),
    MediaItem(
      id: "https://samcloud.spacial.com/api/listen?br=128000%2Cany&f=aac%2Cany&m=sc&rid=156742&sid=81425",
      album: "Hindi",
      title: "Radio One - Bangalore",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/puxrjnfpf5ps.jpeg'),
    ),
    MediaItem(
      id: "http://procyon.shoutca.st:8902/stream",
      album: "Hindi",
      title: "Radio Gethu",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/ws2rmbwv9eew.png'),
    ),
    MediaItem(
      id: "http://ample-zeno-06.radiojar.com/6be9v08pnyduv",
      album: "Hindi",
      title: "Radio Virsa",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/bazxuutwbphd.png'),
    ),
    MediaItem(
      id: "http://s2.voscast.com:9612/;stream.mp3",
      album: "Hindi",
      title: "Radio Panj",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/a6jxvfd9eq64.jpg'),
    ),
    MediaItem(
      id: "http://prclive1.listenon.in:8840/;",
      album: "Hindi",
      title: "Radio City Electronica",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/4jpx4ye5r2cw.png'),
    ),
    MediaItem(
      id: "http://37.59.41.148:7764/;",
      album: "Hindi",
      title: "Eawaz 770 AM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/wtxtsfm48yky.jpg'),
    ),
    MediaItem(
      id: "http://94.130.113.214:8000/chill",
      album: "Hindi",
      title: "Schizoid - Chillout",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/tzNhrvB3HQ.png'),
    ),
    MediaItem(
      id: "http://str2b.openstream.co/678?aw_0_1st.collectionid=4172&stationId=4172&publisherId=702&k=1615564347",
      album: "Hindi",
      title: "Radio Beat Extra",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/zbnt7cwdydj6.jpg'),
    ),
    MediaItem(
      id: "http://192.95.39.65:5328/;",
      album: "Hindi",
      title: "Radio Madurai",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/p6qpuepxwgm9.jpg'),
    ),
    MediaItem(
      id: "http://104.200.16.182:8000/;",
      album: "Hindi",
      title: "Pollachi FM ",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/5p8znwyzdxtr.jpg'),
    ),
    MediaItem(
      id: "http://85.93.91.10:8144/stream",
      album: "Hindi",
      title: "Radio Jay Bhim",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/7ufpthe7relp.png'),
    ),
    MediaItem(
      id: "https://samcloud.spacial.com/api/listen?br=128000%2Cany&f=aac%2Cany&m=sc&rid=156742&sid=81425",
      album: "Hindi",
      title: "Radio One 94.3 FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/dymxd6pkj3g8.jpeg'),
    ),
    MediaItem(
      id: "http://janus.shoutca.st:8112/stream",
      album: "Hindi",
      title: "Shripad Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/static/images/radio-default.jpg'),
    ),
    MediaItem(
      id: "http://stream.zeno.fm/gq8kyhuut4zuv",
      album: "Hindi",
      title: "KL-27 RADIO",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/gxwpmtug8tjl.jpg'),
    ),
    MediaItem(
      id: "https://node-04.zeno.fm/hk3w15m8gwzuv",
      album: "Hindi",
      title: "Tamil Catholic FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/zxcwrf29aptb.png'),
    ),
    MediaItem(
      id: "http://142.4.215.64:8060/;",
      album: "Hindi",
      title: "Zindagi Forever Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/zbnqqgsd44y9.png'),
    ),
    MediaItem(
      id: "https://hosurthedalfm-spiritualfm2.radioca.st/stream",
      album: "Hindi",
      title: "Thedal FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/f9cxh6hmhcte.png'),
    ),
    MediaItem(
      id: "https://streamingv2.shoutcast.com/rakfm-live-stream",
      album: "Hindi",
      title: "Rak 103.5 FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/xej6nupuukx3.png'),
    ),
    MediaItem(
      id: "http://37.187.90.196:9024/;",
      album: "Hindi",
      title: "Radiocast.in Channel",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/wqy599me74j9.png'),
    ),
    MediaItem(
      id: "https://southradios.net/play/kadhalradio",
      album: "Hindi",
      title: "Kadhal Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/skq79h4wpm9u.jpg'),
    ),
    MediaItem(
      id: "http://184.154.43.106:8145/stream",
      album: "Hindi",
      title: "Radio Media Village",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/dzj4jtfx4hzn.png'),
    ),
    MediaItem(
      id: "https://usa1.fastcast4u.com/proxy/ullasamfm?mp=%2F1",
      album: "Hindi",
      title: "Ullasam FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/repv939ehnud.png'),
    ),
    MediaItem(
      id: "http://streamasiacdn.atc-labs.com/globalradio.aac",
      album: "Hindi",
      title: "Global Radio 91.2 FM",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/xmjwq2k5wqtc.png'),
    ),
    MediaItem(
      id: "http://s1.voscast.com:9038/;",
      album: "Hindi",
      title: "GTBC Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/pndbx4gevxpd.jpg'),
    ),
    MediaItem(
      id: "https://stream.zenolive.com/qyb8s75nsceuv",
      album: "Hindi",
      title: "Jesus Alive Radio",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/nl8n7hvdz475.jpg'),
    ),
    MediaItem(
      id: "http://91.121.222.81:8306/stream",
      album: "Hindi",
      title: "Apple FM 105",
      artist: "",
      artUri: Uri.parse('https://static.mytuner.mobi/media/tvos_radios/6rvrm9pjrfaz.jpg'),
    ),

  ];

  final List<MediaItem> _allLists = [
    // Nepali Lists
    MediaItem(
        id: 'http://broadcast.radiokantipur.com:7248/stream',
        title: 'Radio Kantipur 96.1 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://jcss-cdn.ekantipur.com/kantipur-radio/images/kantipurradio-logo.png')),
    MediaItem(
        id: 'http://radionepal.gov.np:40100/stream',
        title: 'Radio Nepal 792 AM',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s17747g.png')),
    MediaItem(
        id: 'https://stream.zeno.fm/h527zwd11uquv',
        title: 'Ujyaalo Network 90 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://unncdn.prixacdn.net/static/frontend/img/logo.png')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8631/;stream.mp3',
        title: 'Image FM 97.9 Mhz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://scontent.fpkr3-1.fna.fbcdn.net/v/t31.0-8/12029651_736378596506948_6655635335795014615_o.jpg?_nc_cat=101&ccb=3&_nc_sid=174925&_nc_ohc=QX772HUzFBkAX_Xy9xG&_nc_ht=scontent.fpkr3-1.fna&oh=88a56f541f400cf4664cfd0910effa68&oe=604DAE61')),
    MediaItem(
        id: 'https://usa15.fastcast4u.com/proxy/hitsfm912?mp=/1',
        title: 'Hits FM 91.2 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://static-media.streema.com/media/cache/a5/d8/a5d827f31d007b629c059f19f35cb59b.jpg')),
    MediaItem(
        id: 'http://kalika-stream.softnep.com:7740',
        title: 'Kalika FM 95.2 MHz',
        artist: 'Bharatpur, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://static.tuneyou.com/images/logos/500_500/63/12263/KalikaFM95.2_3.png')),
    MediaItem(
        id: 'https://stream.zeno.fm/fvrx47wpg0quv',
        title: 'Radio Audio 106.3 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri:
        Uri.parse('http://cdn-profiles.tunein.com/s105813/images/logog.png')),
    MediaItem(
        id: 'http://rstream.abgroupnepal.com:8000/radiosargam',
        title: 'Radio Sargam 93 FM MHz',
        artist: 'Siraha, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://lh3.googleusercontent.com/1e4bJYcrgIhF1eaKV3rRdViDBS7akoKkYx3q7GIBN2VMG0ukCqZ-_raYa5AADnvgAw=h750')),
    MediaItem(
        id: 'http://streaming.softnep.net:8091/stream?type=http&nocache=174097',
        title: 'Radio Annapurna 94.0 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2020/04/radio-annapurna-nepal.jpg')),
    MediaItem(
        id: 'https://onlineradio.websoftitnepal.com/8036/stream;',
        title: 'Radio City 98.8 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s65659g.png')),
    MediaItem(
        id: 'https://live.itech.host:8927/stream',
        title: 'Radio Amargadhi 97.4',
        artist: 'Dadeldhura, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://yt3.ggpht.com/ytc/AAUvwnjbSXn5Yz9HaiI4HaRbA9nydcg8JrMWF6_0hTfS=s900-c-k-c0x00ffffff-no-rj')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8246/;?',
        title: 'Headlines & Music FM 97.2 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s181441g.png')),
    MediaItem(
        id: 'http://streaming.softnep.net:8037/;',
        title: 'Capital F.M. 92.4 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s139846g.png')),
    MediaItem(
        id: 'https://live.itech.host:3260/stream',
        title: 'Radio Resunga 106.2 MHz',
        artist: 'Tamghas, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2013/12/radio-resunga.png')),
    MediaItem(
        id: 'https://listen-ssvcbfbs.sharp-stream.com/ssvcbfbs3.aac',
        title: 'BFBS Gurkha Radio',
        artist: 'BFBS Gurkha Radio',
        album: "Nepali",
        artUri: Uri.parse(
            'http://cdn-profiles.tunein.com/s65658/images/logog.png?t=160683')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8214/;',
        title: 'Saptakoshi FM 90 MHz',
        artist: 'Itahari, Nepal',
        album: "Nepali",
        artUri:
        Uri.parse('https://i.ytimg.com/vi/JMfZz3gXYgk/maxresdefault.jpg')),
    MediaItem(
        id: 'https://live.itech.host:8167/stream?1611505122592',
        title: 'Good News FM 105.1 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s228509g.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:9006/stream',
        title: 'Radio Parasi 90.2 MHz',
        artist: 'Nawalparasi, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2017/02/radio-parasi.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:7001/stream',
        title: 'Radio Surkeht 90.2 MHz',
        artist: 'Surkhet, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2020/04/radio-surkhet.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9659/stream?type=.mp3',
        title: 'Saugaat FM 103.6 MHz',
        artist: 'Baitadi, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://1.bp.blogspot.com/-m3QTsxyR-TQ/XcKKVvTFbpI/AAAAAAAAAAM/CWQA8xmLKB4W896fKLV5A7VJ9zNaV7eUwCLcBGAsYHQ/s1600/saugat-fm.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9102/stream',
        title: 'Galyang FM 92.2 MHz',
        artist: 'Syanga, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://play-lh.googleusercontent.com/A7N45Igep_iGBhGqpgUX6POFUSby60-8CKDF8Vqt35V9O4uj2-zmuElad6WLAM9LwEo')),
    MediaItem(
        id: 'http://live.itechnepal.com:9174/stream',
        title: 'Radio Sailung 92.7 FM',
        artist: 'Dolakha, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2012/04/296689_161464773932800_7760817_n.jpeg')),
    MediaItem(
        id: 'http://streaming.softnep.net:8031/;stream.nsv&amp;type=mp3&amp;volume=50&amp;autostart=true',
        title: 'Radio Triveni 100.6 MHz',
        artist: 'Madi Kalyanpur, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s166881g.png')),
    MediaItem(
        id: 'http://streaming.softnep.net:8003/;',
        title: 'Butwal FM 94.4 MHz',
        artist: 'Butwal, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.online-fmradio.com/wp-content/uploads/2019/04/Butwal-FM-Nepal.jpg')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8399/;',
        title: 'Synergy FM 91.6 MHz',
        artist: 'Chitwan, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://images.hamro-files.com/TdkqtW9dm-PDI5vTIl1RdBw6SXw=/500x500/https://sgp1.digitaloceanspaces.com/everestdb/hamropatro-backend/radio/14a10e97-f58e-408a-bbe1-319e450b4a87')),
    MediaItem(
        id:
        'http://streaming.softnep.net:8025/;stream.nsv&amp;type=mp3&amp;volume=60',
        title: 'Radio Thaha Sanchar 99.6 MHz',
        artist: 'Hetauda, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2017/01/radio-thaha-sanchar.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9593/stream',
        title: 'Shreenagar FM 99.6 MHz',
        artist: 'Palpa, Tansen',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2011/11/shreenagar-fm.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8541/stream',
        title: 'Nepali Radio',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s17747g.png')),
    MediaItem(
        id: 'https://live.itech.host:9484/stream?1607152537976',
        title: 'Vijaypur FM 98.8 MHz',
        artist: 'Sunsari, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.vijayapurfm.com/assets/images/Vijyapurfm.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8916/stream?type=.mp3',
        title: 'Radio Prabhu',
        artist: 'Jhalari, Kanchanpur',
        album: "Nepali",
        artUri: Uri.parse(
            'https://fmradiolink.com.np/site/uploads/pages/117473424074351760_2498097003571493_8351596033427374080_n.jpeg')),
    MediaItem(
        id: 'https://stream.zeno.fm/fvrx47wpg0quv',
        title: 'Radio Andhikhola 105.4 MHz',
        artist: 'Syangja, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2012/07/radio-andhikhola.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8496/stream',
        title: 'Naya Karnali FM 102.8 MHz',
        artist: 'Karnali, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2017/02/radio-naya-karnali.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8496/stream',
        title: 'Radio Upatyaka 87.6 MHz',
        artist: 'Kathmandu, Nepal',
        album: "Nepali",
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s181269g.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8466/stream',
        title: 'Choice FM 90.4 MHz',
        artist: 'Gorkha, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://mytuner.global.ssl.fastly.net/media/tvos_radios/akq2puqzjvb3.jpg')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8617/;',
        title: 'Radio Dhangadhi 90.5 MHz',
        artist: 'Kailali, Nepal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://4.bp.blogspot.com/-j4bxmCPVfyU/WhCwokZZwsI/AAAAAAAAi2k/VgTCgqDNrDcWK3DT60Rm_W6pljmOEcnXQCLcBGAs/s640/radio-dhangadhi.png')),
    MediaItem(
        id: 'https://live.itech.host:9484/stream?1607152537976',
        title: 'Vijaypur FM 98.8',
        artist: 'Sunsari, Nepal',
        album: 'Nepali',
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s181028g.png')),
    MediaItem(
        id: 'http://216.55.141.189:8653/;stream/1',
        title: 'Swadesh FM 93.2 MHz',
        artist: 'Madi Kalyanpur, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'http://cdn-profiles.tunein.com/s306044/images/logog.jpg?t=152216')),
    MediaItem(
        id: 'https://live.itech.host:8434/live?type=.mp3',
        title: 'Krishnasar 94 MHz',
        artist: 'Nepaljung, Nepal',
        album: 'Nepali',
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s144300g.png')),
    MediaItem(
        id: 'http://live.itech.host:8268/stream',
        title: 'Radio Shaileshwori 105.9 MHz',
        artist: 'Doti, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://4.bp.blogspot.com/-y2onSomAOzY/XSssC-QNf5I/AAAAAAABOhM/2aWKDAWxr1kvGOtZ1y1blB-bPVeEZF9TwCLcBGAs/s1600/sfm.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8021/stream?type=.mp3',
        title: 'Pradesh FM 105',
        artist: 'Surkhet, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2020/04/pradesh-fm.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8786/stream',
        title: 'Damauli FM 94.2 MHz',
        artist: 'Tanahun, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2012/05/damauli-fm-e1485192126107.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8744/stream',
        title: 'Pathibhara FM 93.6 MHz',
        artist: 'Jhapa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.pathibharafm.org/assets/images/fb-share-new.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8792/stream',
        title: 'Radio Janapriya FM 102.4 MHz',
        artist: 'Achham, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fpkr3-1.fna.fbcdn.net/v/t31.0-8/1073743_497392787002840_14069_o.jpg?_nc_cat=106&ccb=3&_nc_sid=09cbfe&_nc_ohc=_4iztwnUUlQAX8aSVa5&_nc_ht=scontent.fpkr3-1.fna&oh=6ec4a9979df3c1b9731264f2c5ea670d&oe=604BEBB2')),
    MediaItem(
        id: 'http://live.itechnepal.com:8286/stream?type=.mp3',
        title: ' Khandbari FM 105.6 MHz',
        artist: 'Khandbari, Nepal',
        album: 'Nepali',
        artUri: Uri.parse('https://www.kfm.com.np/images/logo.jpg')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8383/;',
        title: 'Vijaya FM 101.6 MHz',
        artist: 'Gaidakot,Nawalparasi, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2016/11/vijay-fm.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9090/stream?type=.mp3',
        title: 'Radio Menchhyayem 103.4 MHz',
        artist: 'Tehrathum, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2012/07/radio-menchhyayem-fm.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9168/stream',
        title: ' Radio Birat FM 88.5 MHz',
        artist: 'Jhapa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2017/02/birat-fm.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8964/stream',
        title: 'Radio Annapurna 93.4',
        artist: 'Pokhara, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://d3tahvfkle3xlm.cloudfront.net/images/GZaK/FjvK0GHz.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9491/stream',
        title: 'Radio dhorbarahi 103.8 Mhz',
        artist: 'Tanahun, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2012/06/radio-dhorbarahi.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9551/stream?type=.mp3',
        title: 'Hamro Radio 103.4 MHz',
        artist: 'Charikot, Dolakha',
        album: "Nepali",
        artUri: Uri.parse('https://hamroradiofm.org.np/images/logo.png')),
    MediaItem(
        id:
        'https://playerservices.streamtheworld.com/api/livestream-redirect/SAM04AAC227_SC',
        title: 'Chitwan Online FM',
        artist: 'Chitwan, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://static-media.streema.com/media/cache/70/e7/70e73fefc877c5ca7d32ea53cfd828e4.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8676/stream?type=.mp3',
        title: 'Nepalbani FM 94.9 MHz',
        artist: 'Ilam, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://callmandu.com/wp-content/uploads/2020/08/radio-nepalvaani.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8676/stream?type=.mp3',
        title: 'Radio Rubaru 104.5 FM',
        artist: 'Banke, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://play-lh.googleusercontent.com/Kxt5LfuoU1IEC4EXrG46fhFy7ZXIBi6f4jI4HD1pv4scW2mzBxcOJtL7hY9DOsNCiQ')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8427/;',
        title: 'Radio Vision 91.6',
        artist: 'Jhapa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://image.winudf.com/v2/image1/cmFkaW92aXNpb24uc2FuaXNpZHJvX3NjcmVlbl8wXzE1NDg0OTA3MTBfMDQx/screen-0.jpg?fakeurl=1&type=.jpg')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8427/;',
        title: 'Radio Tahalka 91.9',
        artist: 'Salyan, Nepal',
        album: 'Nepali',
        artUri:
        Uri.parse('https://i.ytimg.com/vi/UrpF12le_OQ/maxresdefault.jpg')),
    MediaItem(
        id:
        'http://streaming.softnep.net:8065/;stream.nsv&amp;type=mp3&amp;volume=50',
        title: 'Radio Tahalka 91.9',
        artist: 'Khalanga, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'http://cdn-profiles.tunein.com/s234872/images/logog.jpg?t=151197')),
    MediaItem(
        id: 'http://live.itechnepal.com:7031/stream?type=.mp3',
        title: 'Nagarik FM 107.5 MHz',
        artist: 'Jhapa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://liveonlineradio.net/wp-content/uploads/2015/11/Nagarik-FM-107.5.jpg')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8124/;',
        title: 'B FM 91.2 MHz',
        artist: 'Biratnagar, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2012/02/bfm-91.2.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9210/stream',
        title: 'Radio, Tulsipur',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s243205g.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:9042/stream?type=.mp3',
        title: 'Radio Makalu 92.2 MHz',
        artist: 'Dhankuta, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fktm2-1.fna.fbcdn.net/v/t1.0-9/12299351_797587843697186_7433112137587591484_n.png?_nc_cat=111&ccb=3&_nc_sid=09cbfe&_nc_ohc=JI948XozFR8AX9jrB_m&_nc_ht=scontent.fktm2-1.fna&oh=26937b38661cacc8cd3ed76665360542&oe=604F0758')),
    MediaItem(
        id: 'https://streaming.webhostnepal.com/8032/stream',
        title: 'Radio Janata 89.1 Mhz',
        artist: 'Kathmnadu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.janatanetwork.com/wp-content/uploads/2020/02/jtv-logo.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8001/stream',
        title: 'Radio Bheriganga 91.4 MHz',
        artist: 'Surkhet, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2020/04/radio-bheriganga-fm.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8368/stream?type=.mp3',
        title: 'Radio Bandipur 88.8 MHz',
        artist: 'Tanahun, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://static-media.streema.com/media/cache/c0/0f/c00f239895672e15da84b1654a690199.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9052/stream',
        title: 'Gurung Radio',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri:
        Uri.parse('http://cdn-profiles.tunein.com/s297435/images/logog.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9006/stream?type=.mp3',
        title: 'Radio Madhyapaschim 91.4 MHz',
        artist: 'Dang, Nepal',
        album: 'Nepali',
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s167635g.png')),
    MediaItem(
        id: 'https://live.itech.host:1240/stream?1607165086822',
        title: 'Radio Rolpa 93.8 MHz',
        artist: 'Rolpa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s181085g.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8014/stream',
        title: 'Sunaulo FM 105.6 MHz',
        artist: 'Kailali, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://1.bp.blogspot.com/-cqFkPlnMsgQ/XiG5Ia44fcI/AAAAAAABWhQ/oGhnv4HHV-UOL6ua71BhxJBXJ6KY4qZ8wCLcBGAsYHQ/w1200-h630-p-k-no-nu/sunaulo-fm.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8810/stream?type=.mp3',
        title: 'Radio Sunwal 90.7',
        artist: 'Nawal, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://play-lh.googleusercontent.com/01SQ_IUazid8wcZkQCFlyOLT5Oh6lsf_oSbLuM-6dMbWcSNIMQPfwK26WUjvPUGpzQ=w1024-h500')),
    MediaItem(
        id: 'http://live.itechnepal.com:8010/stream?type=.mp3',
        title: 'Helambu FM 89.6',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fktm2-1.fna.fbcdn.net/v/t1.0-9/13419144_1781812405389406_8693945857124327058_n.jpg?_nc_cat=106&ccb=3&_nc_sid=09cbfe&_nc_ohc=45DPla-hQdQAX9RvOTq&_nc_oc=AQkMkZQIqB2YqdGLl23vSAR2xKkJMZB-bWoOaFlhbhJr41dDuHVQna-b4Y55BZzAhm4&_nc_ht=scontent.fktm2-1.fna&oh=01c730d378a557a5346792444fe000e1&oe=604D5793')),
    MediaItem(
        id:
        'https://freeuk5.listen2myradio.com/live.mp3?typeportmount=s1_29877_stream',
        title: 'Radio Kolhabi 104.1 Mhz',
        artist: 'Bara, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://1.bp.blogspot.com/-qd--kHOMbIs/XgIhI9YGmMI/AAAAAAAAAOA/XIn-qS7H0-kGHrxipQ-A3rUYpMvGnj1lgCLcBGAsYHQ/s1600/kol.jpg')),
    MediaItem(
        id:
        'http://streaming.softnep.net:8101/;stream.nsv&amp;type=mp3&amp;volume=60',
        title: 'Radio Karnali 105.2',
        artist: 'Jumla, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2017/02/radio-karnali.png')),
    MediaItem(
        id: 'https://live.itech.host:9519/live',
        title: 'Radio Tikapur 1010',
        artist: 'Kailali, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://radiofm.link/assets_front/images/sharelogo/radionamastetkp_com_np.jpg')),
    MediaItem(
        id: 'https://live.itech.host:9519/live',
        title: 'Radio Safalta 103.4 MHz',
        artist: 'Pokhara, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fktm2-1.fna.fbcdn.net/v/t1.0-9/72429621_2542784632426133_5326930465578287104_o.jpg?_nc_cat=101&ccb=3&_nc_sid=09cbfe&_nc_ohc=YHBf1tYBfXYAX-dT6bV&_nc_ht=scontent.fktm2-1.fna&oh=fc4d653b7d00f4ff13630928144be39a&oe=604D0401')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8313/;',
        title: 'Radio Bheri 98.6 MHz',
        artist: 'Surkhet, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'http://gokarnali.com/wp-content/uploads/2019/07/radiobac.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9120/stream',
        title: 'Radio Marsyangdi 95.0 MHz',
        artist: 'Lamjung, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://1.bp.blogspot.com/-a5i0ahvFi-0/XcKSjFOZ0qI/AAAAAAAAABE/1RemDPQUXsoKmcNy-7JNTapCl-XY8puZQCLcBGAsYHQ/s1600/marsyandgi.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9413/stream?type=.mp3',
        title: 'Grace FM 107.6 MHz',
        artist: 'Kavre, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://dbs.radioline.fr/pictures/radio_28b2b9c23e1d257987e4761428b0cdcf/logo200.jpg?size=600')),
    MediaItem(
        id: 'https://stream.galaxywebsolutions.com/proxy/tligradio_ne?mp=/stream',
        title: 'True Life in God Radio',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://mytuner.global.ssl.fastly.net/media/tvos_radios/jtxuvymw3nax.png')),
    MediaItem(
        id: 'https://stream.galaxywebsolutions.com/proxy/tligradio_ne?mp=/stream',
        title: 'Asal Sathi Radio',
        artist: 'Pokhara, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fktm2-1.fna.fbcdn.net/v/t1.0-9/122976388_101107991808844_6696756919257771091_o.jpg?_nc_cat=104&ccb=3&_nc_sid=09cbfe&_nc_ohc=pLKvLwuX_T4AX9AW0y8&_nc_ht=scontent.fktm2-1.fna&oh=6499e5d8841e04ae6c7f1f9df1a152fb&oe=604FDB89')),
    MediaItem(
        id: 'http://live.itechnepal.com:8768/stream?type=.mp3',
        title: 'Radio Janani 90.6 FM MHz',
        artist: 'Pokhara, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.avenepal.com/wp-content/uploads/2017/07/maxresdefault-1.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9150/stream?type=.mp3',
        title: 'Radio Terhathum 92.4 MHz',
        artist: 'Terhathum, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://lh3.googleusercontent.com/kRwXNmJcEw37SeLvR_yey10QjXCPWFSy2ix5XszfNcc68ISdUUGWdYyZpNGheDL3Q6w')),
    MediaItem(
        id: 'http://live.itechnepal.com:9150/stream?type=.mp3',
        title: 'Radio Prakriti 93.4 MHz',
        artist: 'Tulsipur, Nepal',
        album: 'Nepali',
        artUri:
        Uri.parse('https://i.ytimg.com/vi/Fhc0PABV9Oc/hqdefault_live.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8288/stream?type=.mp3',
        title: 'Navajyoti FM 88.2 MHz',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://3.bp.blogspot.com/-XvS_wq5kdwY/WhKmi8xKH2I/AAAAAAAAjG4/waW9RNt67Vk8Zh3Eq0mai4VqRpOptl3cQCLcBGAs/w1200-h630-p-k-no-nu/navajyoti.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:9629/stream?type=.mp3',
        title: 'Saptarangi FM 101.6 MHz',
        artist: 'Damak, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://i1.sndcdn.com/avatars-000427532838-r4hr8q-t500x500.jpg')),
    MediaItem(
        id: 'http://live.itech.host:9162/stream',
        title: 'Ganatantra FM 95.1 MHz',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fktm2-1.fna.fbcdn.net/v/t31.0-8/fr/cp0/e15/q65/10704394_770821986306635_3337224741557856805_o.jpg?_nc_cat=104&ccb=3&_nc_sid=85a577&efg=eyJpIjoidCJ9&_nc_ohc=qC5SKY3b-mMAX8ouALn&_nc_ht=scontent.fktm2-1.fna&tp=14&oh=41e615f46793be492a53c6aef0570047&oe=604EDC96')),
    MediaItem(
        id: 'http://live.itechnepal.com:8828/stream?type=.mp3',
        title: 'Radio Aakash Ganga 88.5 FM',
        artist: 'Makawanpur, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.radioaakashganga.com.np/admin-panel/uploads/images/slider/2016-04-27-04-28-52-11873462_139286873076648_2731485520689164206_n.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9521/stream',
        title: 'Sunakhari Radio Live 91.4 MHz',
        artist: 'Jhapa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://1.bp.blogspot.com/-bRVVDxQStuI/WhGqkVNC7JI/AAAAAAAAjAU/ugB_1uEZ7HcrVJKK41NlCMn5iI_bhHIMACLcBGAs/s640/sunakhari.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9437/stream',
        title: 'Gunjan FM 105.3 MHz',
        artist: 'Rautahat, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://4.bp.blogspot.com/-Uqgb3FWSwaE/WhKylvee5wI/AAAAAAAAjIc/TSBNGhYMlbUlQlSw6hxDdBWDoqFjd-O0wCLcBGAs/s640/gunjan.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:7014/stream?type=.mp3',
        title: 'Radio Namaste 92.8 MHz',
        artist: 'Kalikanagar, Butwal',
        album: "Nepali",
        artUri: Uri.parse(
            'https://i1.sndcdn.com/artworks-000020293597-qq0b0d-t500x500.jpg')),
    MediaItem(
        id: 'http://streaming.softnep.net:8107/;',
        title: 'Radio Sarangi Pokhara 101.3 MHz',
        artist: 'Pokhara, Nepal',
        album: 'Nepali',
        artUri: Uri.parse('http://cdn-radiotime-logos.tunein.com/s224517g.png')),
    MediaItem(
        id: 'http://streaming.softnep.net:8173/;',
        title: 'Radio Times 94.8',
        artist: 'Radio Times',
        album: "Nepali",
        artUri: Uri.parse('https://radiotimes.com.np/images/share.jpg')),
    MediaItem(
        id: 'https://streaming.webhostnepal.com/8014/stream',
        title: 'Radio Tharuhat ',
        artist: 'Bara, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://static-media.streema.com/media/cache/40/e9/40e97128b289f5fb900d8e9d72511f70.jpg')),
    MediaItem(
        id: 'http://live.itech.host:2430/stream',
        title: 'Radio Artha Sarokar 90.5 MHz',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://lh3.googleusercontent.com/XiBhd0fbaopAAYaqZY7k1KR2K_eLePfQmSBRtdfJjcb98uC9aYysNEzuDK3eq3GbGYRjN-Ja=w1080-h608-p-no-v0')),
    MediaItem(
        id: 'http://live.itechnepal.com:9048/stream',
        title: 'Eagle FM 99.2 MHz',
        artist: 'Phidim, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.livefms.com/wp-content/uploads/2017/02/eagle-fm-phidim.png')),
    MediaItem(
        id: 'https://live.itech.host:2880/stream?type=.mp3',
        title: 'Itahari FM 92.5',
        artist: 'Itahari, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://yt3.ggpht.com/ytc/AAUvwnhm3fQXqHaxD6EFUpGJ71rJwyx1Ddn3M03XRf4j=s900-c-k-c0x00ffffff-no-rj')),
    MediaItem(
        id: 'https://stream.zeno.fm/60tx8fw9dd0uv',
        title: 'Radio Tufan 102.4 MHz',
        artist: 'Malangwa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://mytuner.global.ssl.fastly.net/media/tvos_radios/f4uhhpqbqufu.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8640/stream?type=.mp3',
        title: 'Mithilanchal FM',
        artist: 'Mithilanchal FM 105.0 MHz',
        album: "Nepali",
        artUri: Uri.parse(
            'https://upload.wikimedia.org/wikipedia/commons/3/36/Mithilanchal_FM.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9383/stream',
        title: 'Radio Chautari 91.4 MHz',
        artist: 'Lamjung, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://www.avenepal.com/wp-content/uploads/2017/07/radio-chautaari_revised-logo2.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9018/stream',
        title: 'Radio Ramgyanu FM 89 MHz',
        artist: 'Dhading, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fpkr3-1.fna.fbcdn.net/v/t1.0-9/1460277_718000454876642_490898958_n.jpg?_nc_cat=110&ccb=3&_nc_sid=09cbfe&_nc_ohc=yfGbhxbCs7QAX9hmui1&_nc_ht=scontent.fpkr3-1.fna&oh=90bb27b30068d0789f17041b49305c2e&oe=60568CC8')),
    MediaItem(
        id: 'http://live.itechnepal.com:8574/stream',
        title: 'Radio Hamro Paila 91.6 MHz',
        artist: 'Jajarkot, Khalanga',
        album: "Nepali",
        artUri: Uri.parse(
            'https://lh3.googleusercontent.com/m8uG0uqvZOvAEocyNXuilSKJ5YwrMNovCny6x1hMMpbr7ayfHYwjhygXgIhALX1JnL0=w420-rw')),
    MediaItem(
        id: 'http://live.itechnepal.com:8974/stream?type=.mp3',
        title: 'Friends FM 90.9 MHz',
        artist: 'Battar, Nuwakot',
        album: "Nepali",
        artUri: Uri.parse(
            'https://meromahasagar.files.wordpress.com/2019/07/d75b3-friends2bfm1.jpeg')),
    MediaItem(
        id: 'http://live.itechnepal.com:9211/stream',
        title: 'Radio Morning Star 90 FM',
        artist: 'Banke, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://1.bp.blogspot.com/-knQ_hf_np8w/XcWVoNn_k8I/AAAAAAABTtY/DyLrwielCBA2XMgHsLjmuhEkftnusGtagCLcBGAsYHQ/w1200-h630-p-k-no-nu/radio-morning-star.jpg')),
    MediaItem(
        id: 'http://live.itechnepal.com:8374/stream?type=.mp3',
        title: 'Radio Bhorukawa 92.8 MHz',
        artist: 'Rajbiraj, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2017/02/bhorukawa-fm-rajbiraj.png')),
    MediaItem(
        id: 'http://161.97.67.77:9300/;&amp;autostart=true',
        title: 'Radio Sagarmatha 102.4 MHz',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://static-media.streema.com/media/cache/43/46/434691d41e4a6c8b448037801bfd9540.jpg')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8230/;',
        title: 'Nepal FM 91.8 MHz',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'http://lh3.googleusercontent.com/QGS2D6SLoty8M577PYEigslFyIEZ6s2sw6vpqR3tpH2zmGZFHuuadiINTv2hKeyoSA=w300')),
    MediaItem(
        id: 'http://live.itechnepal.com:9030/stream?type=.mp3',
        title: 'Radio Belauri 105 FM MHz',
        artist: 'Kanchanpur, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fpkr3-1.fna.fbcdn.net/v/t1.0-9/21462420_1815226911851207_7442011600347264471_n.jpg?_nc_cat=105&ccb=3&_nc_sid=09cbfe&_nc_ohc=91mWEleTprIAX9rJ9wL&_nc_ht=scontent.fpkr3-1.fna&oh=60381fafab0ddfdd387d7540ab1a5130&oe=60549DB3')),
    MediaItem(
        id: 'http://live.itechnepal.com:9425/stream',
        title: 'Radio Sanobheri 100.8 MHz',
        artist: 'Rukum, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2012/12/radio-sanobheri.jpg')),
    MediaItem(
        id:
        'http://streaming.softnep.net:8065/;stream.nsv&amp;type=mp3&amp;volume=50',
        title: 'Unique FM 97.6 MHz',
        artist: 'Khalanga, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'http://cdn-profiles.tunein.com/s234872/images/logog.jpg?t=151197')),
    MediaItem(
        id: 'http://live.itechnepal.com:9341/stream',
        title: 'Bulbule FM 103.4 MHz',
        artist: 'Birendranagar, Surkhet',
        album: "Nepali",
        artUri: Uri.parse(
            'http://www.surkhet.net/wp-content/uploads/2019/07/radiobac.jpg')),
    MediaItem(
        id:
        'http://streaming.softnep.net:8057/;stream.nsv&amp;type=mp3&amp;volume=60',
        title: 'Radio Makwanpur 101.3 MHz',
        artist: 'Makwanpur, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://images.hamro-files.com/GY479_FS_h0QIwC3sCXskC4M7oE=/500x500/https://sgp1.digitaloceanspaces.com/everestdb/hamropatro-backend/radio/fe819d78-9ad5-48ef-a392-924ae213179e')),
    MediaItem(
        id: 'http://live.itechnepal.com:9012/stream',
        title: 'Radio Taplejung 94 MHz',
        artist: 'Taplejung, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://livefms.com/wp-content/uploads/2012/04/radio-taplejung.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:8834/stream?type=.mp3',
        title: 'Radio Dhurbatara Samudayik 89.8',
        artist: 'Dailekh, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://callmandu.com/wp-content/uploads/2020/08/Radio-Dhurbatara.jpg')),
    MediaItem(
        id: 'http://live.itech.host:9162/stream',
        title: 'Ganatantra FM 95.1 MHz',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://scontent.fpkr3-1.fna.fbcdn.net/v/t31.0-8/10704394_770821986306635_3337224741557856805_o.jpg?_nc_cat=104&ccb=3&_nc_sid=09cbfe&_nc_ohc=he3tdxZVh0IAX9KJVyk&_nc_ht=scontent.fpkr3-1.fna&oh=11aa2ec1d0431a921e40833d5e3e620d&oe=6057D2A2')),
    MediaItem(
        id: 'http://148.66.135.69:9336/;',
        title: 'A One FM 99 MHz',
        artist: 'Jhapa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://ws.shoutcast.com/images/contacts/d/d9c7/d9c76f3d-c44b-4cae-a8b8-a12cdf40303f/radios/5a19ef8f-2627-4357-b5ea-8477d2390f01/5a19ef8f-2627-4357-b5ea-8477d2390f01.png')),
    MediaItem(
        id: 'http://live.itechnepal.com:9156/stream',
        title: 'Radio Mukti 99.2 MHz',
        artist: 'Kathmandu, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://play-lh.googleusercontent.com/JNuaZCP4AGEdLxNyQXT_VYJsUkcbAqGSvhRXdiFFbCf1MpEGP7KyIOdiftlXDUIlv7Qc')),
    MediaItem(
        id: 'http://streaming.hamropatro.com:8761/;',
        title: 'Radio Kamal',
        artist: 'Jhapa, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://images.hamro-files.com/YM5DOVf40x-DRDsc4gZd4u-qcuY=/500x500/https://sgp1.digitaloceanspaces.com/everestdb/hamropatro-backend/radio/2e96b867-de1c-4162-b350-ff846b234032')),
    MediaItem(
        id: 'http://live.itechnepal.com:8658/stream?type=.mp3',
        title: 'Radio Gurbaba 106.4 MHz',
        artist: 'Bardiya, Nepal',
        album: 'Nepali',
        artUri: Uri.parse(
            'https://1.bp.blogspot.com/-g3x5lhmrrsM/XcYqJXMDSbI/AAAAAAABTuo/L4TObxf8Pjs3KIAO1GKzVXR0iSEWK2XmwCLcBGAsYHQ/s1600/gurbaba.jpg')),
    //Hindi Lists
    MediaItem(
      id: "https://radioindia.net/radio/mirchi98/icecast.audio",
      album: "Hindi",
      title: "Radio Mirchi 98.3 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/radio-mirchi.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/sc-bb/icecast.audio",
      album: "Hindi",
      title: "92.7 Big FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/big-fm-5001.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/radio-city/icecast.audio",
      album: "Hindi",
      title: "Radio City 91.1 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/radiocity9911.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungama90/icecast.audio",
      album: "Hindi",
      title: "Radio Hungama 90s Once Again",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/Hungama90sOnceAgain.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/bbchindi/icecast.audio",
      album: "Hindi",
      title: "BBC Hindi Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/BBC-World-Service.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/bollywoodandbeyond/icecast.audio",
      album: "Hindi",
      title: "Bollywood Radio and Beyond",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Bollywood-Radio-and-Beyond.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/rainbow_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR FM Rainbow",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/FMRainbow.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/radio_india/icecast.audio",
      album: "Hindi",
      title: "Radio India 1600 AM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-India-1600-AM.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungamadilse/icecast.audio",
      album: "Hindi",
      title: "Hungama Bollywood Dil Se",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Hungama-Bollywood-Dil-Se.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hindi_desi_bollywood/icecast.audio",
      album: "Hindi",
      title: "Hindi desi Bollywood Evergreen Hits",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Hindi-desi-Bollywood.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/esdcdn2_airakashvani/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR Akashvani",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/download.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/fm_gold/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR FM Gold",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/fmgold1001.jpg'),
    ),
    MediaItem(
      id: "https://node-14.zeno.fm/rqqps6cbe3quv.html?rj-ttl=5&rj-tok=AAABcOkIU4oAg1vP6n0gW0Sb2w",
      album: "Hindi",
      title: "New Hits of Bollywood",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Hits-Of-Bollywood.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_bengaluru_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR Bengaluru",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/All-India-Radio-AIR-Bengaluru.jpg'),
    ),
    MediaItem(
      id: "https://node-01.zeno.fm/60ef4p33vxquv?rj-ttl=5&rj-token=AAABbGBHGlcdu87e_YRpIHrxfAnsfcqIAsypLZXICYMhp0FFSpBJjw",
      album: "Hindi",
      title: "Hits Of Bollywood",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Hits-Of-Bollywood.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/vividhbharti/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR Akashvani Vividh Bharati",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/Vividh-Bharati-1.jpg'),
    ),
    MediaItem(
      id: "https://prclive4.listenon.in/Ishq",
      album: "Hindi",
      title: "Radio City Love Guru",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-City-Love-Guru.png'),
    ),
    MediaItem(
      id: "https://live.nukeradio.com/proxy/hindioldhits?mp=/stream3",
      album: "Hindi",
      title: "Nuke Radio Hindi Old Hits",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Nuke-Radio-Hindi-Old-Hits.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_odia_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR Odia",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/AIR-Odia.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungama90/icecast.audio",
      album: "Hindi",
      title: "Hungama 90s Once Again Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/07/Hungama90sOnceAgain.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/retrobollywood/icecast.audio",
      album: "Hindi",
      title: "Retro Bollywood",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Retro-Bollywood.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_shimlafm/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR Shimla",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/AIR-Shimla.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/non_stop_hindi_radio/icecast.audio",
      album: "Hindi",
      title: "Non Stop Hindi Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/non-stop-hindi-india.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungamanow/icecast.audio",
      album: "Hindi",
      title: "Hungama Hot Now Bollywood",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Hungama-Hot-now-Bollywood.jpg'),
    ),
    MediaItem(
      id: "https://live.nukeradio.com/proxy/nukehindi?mp=/stream3",
      album: "Hindi",
      title: "Nuke Radio Hindi",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Nuke-Radio-Hindi.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/radio4/icecast.audio",
      album: "Hindi",
      title: "Radio 4 FM 89.1 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-4-fm.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/spiceindia/icecast.audio",
      album: "Hindi",
      title: "Spice FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Spice-FM.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungama_evergreen_bollywood/icecast.audio",
      album: "Hindi",
      title: "Hungama Evergreen Bollywood",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Hungama-Evergreen-Bollywood.jpg'),
    ),
    MediaItem(
      id: "https://ice10.securenetsystems.net/HUMFM?playSessionID=ECACF786-A4F2-6C95-7BD7DCE1A730EE1A",
      album: "Hindi",
      title: "Radio Hum 106.1 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/Radio-Hum-106.1-FM.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungamaghazal/icecast.audio",
      album: "Hindi",
      title: "Hungama Best of Ghazals",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Hungama-Best-of-Ghazals.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/radiobooly/icecast.audio",
      album: "Hindi",
      title: "Radio Bolly FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Bolly-FM.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_north/icecast.audio",
      album: "Hindi",
      title: "AIR North Eastern Service",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/AIR-North-Eastern-Service.jpg'),
    ),
    MediaItem(
      id: "https://streaming.radio.co/s3aaa20a5e/listen",
      album: "Hindi",
      title: "Radio Umang",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Umang.jpg'),
    ),
    MediaItem(
      id: "https://prclive4.listenon.in/Ghazal",
      album: "Hindi",
      title: "Radio City Ghazal",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-City-Ghazal.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/teentaal/icecast.audio",
      album: "Hindi",
      title: "Radio TeenTaal",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/Radio-TeenTaal.jpg'),
    ),
    MediaItem(
      id: "https://stream.zenolive.com/sgkeutfbaw5tv",
      album: "Hindi",
      title: "Radio Namkin",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Namkin.jpg'),
    ),
    MediaItem(
      id: "https://stream.bongonet.net/proxy/monophone?mp=/stream",
      album: "Hindi",
      title: "Radio BongOnet MonoPhone",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/Radio-BongOnet-MonoPhone.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/taj/icecast.audio",
      album: "Hindi",
      title: "Radio Taj",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/Radio-Taj.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_jodhpur_radio/icecast.audio",
      album: "Hindi",
      title: "All India Radio AIR Jodhpur",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/All-India-Radio-AIR-Jodhpur.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_amrutvarshini/icecast.audio",
      album: "Hindi",
      title: "AIR Amrutvarshini",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/AIR-Amruthavarshini.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_anantapur_radio/icecast.audio",
      album: "Hindi",
      title: "Radio Ananthapuri 101.9 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Ananthapuri.jpg'),
    ),
    MediaItem(
      id: "https://ice8.securenetsystems.net/SGTRADIO",
      album: "Hindi",
      title: "Sangeet Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Sungeet-Radio.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_bhopal_radio/icecast.audio",
      album: "Hindi",
      title: "AIR Bhopal",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/All-India-Radio-AIR-Bhopal.jpg'),
    ),
    MediaItem(
      id: "https://m.southradios.net:9090/arrahmanhindiradio",
      album: "Hindi",
      title: "AR Rahman Hindi Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/AR-Rahman-Hindi-Radio.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/air_indore_radio/icecast.audio",
      album: "Hindi",
      title: "AIR Indore",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/All-India-Radio-AIR-Indore.jpg'),
    ),
    MediaItem(
      id: "https://icecast.bkwsu.eu/radiomadhuban.mp3",
      album: "Hindi",
      title: "Radio Madhuban 90.4 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Madhuban-90.4-FM.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/cmrhindi/icecast.audio",
      album: "Hindi",
      title: "CMR Hindi 101.3 FM Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/CMR-Hindi-FM-Radio.jpg'),
    ),
    MediaItem(
      id: "https://prclive4.listenon.in/Hindi",
      album: "Hindi",
      title: "Radio City Bollywood Mix",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-City-Bollywood-Mix.jpg'),
    ),
    MediaItem(
      id: "https://server4.ujala.nl/stream/2/listen.mp3",
      album: "Hindi",
      title: "Ujala Radio 93.3 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Ujala-Radio-FM.jpg'),
    ),
    MediaItem(
      id: "https://ice8.securenetsystems.net/EASY96",
      album: "Hindi",
      title: "Easy96 Asian Indian Radio Station",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/easy96-india.jpg'),
    ),
    MediaItem(
      id: "https://stream.bongonet.net/proxy/rhi?mp=/stream",
      album: "Hindi",
      title: "Radio Hindi International RHI",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Hindi-International-RHI.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/hungamamasti/icecast.audio",
      album: "Hindi",
      title: "Hungama – Dance Masti International",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Hungama-Dance-Masti-International.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/goldfmradio/icecast.audio",
      album: "Hindi",
      title: "Radio Gold FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Gold-FM.png'),
    ),
    MediaItem(
      id: "https://sh.onweb.gr:7083/stream",
      album: "Hindi",
      title: "DeeJay 97.5 Greece Corfu",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/DJLOGO.png'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/raajfm/icecast.audio",
      album: "Hindi",
      title: "Radio Raaja FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Raaja-FM.jpg'),
    ),
    MediaItem(
      id: "https://live.nukeradio.com:8008/stream3;",
      album: "Hindi",
      title: "Nuke English Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/Nuke-English-Radio.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/sabrasradio/icecast.audio",
      album: "Hindi",
      title: "Sabras Radio",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Sabras-Radio.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/kissfmindia/icecast.audio",
      album: "Hindi",
      title: "Radio Kiss 96.9 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Kiss-96.9-FM.jpg'),
    ),
    MediaItem(
      id: "https://ice10.securenetsystems.net/HUMFM?playSessionID=ECACF786-A4F2-6C95-7BD7DCE1A730EE1A",
      album: "Hindi",
      title: "Radio Hum 106.1 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/09/Radio-Hum-106.1-FM.jpg'),
    ),
    MediaItem(
      id: "https://prclive4.listenon.in/Dance",
      album: "Hindi",
      title: "Radio City dance FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-City-dance-FM.jpg'),
    ),
    MediaItem(
      id: "https://18193.live.streamtheworld.com/SAM02AAC287.mp3",
      album: "Hindi",
      title: "Radio Indigo 91.9 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/Radio-Indigo-91.9-FM.jpg'),
    ),
    MediaItem(
      id: "https://radioindia.net/radio/allhit/icecast.audio",
      album: "Hindi",
      title: "All Hit Radio 104.7 FM",
      artist: "",
      artUri: Uri.parse('https://onlineradioz.com/wp-content/uploads/2020/08/All-Hit-Radio.jpg'),
    ),
  ];

  List<MediaItem> get allLists => _allLists;
  List<MediaItem> get hindiLists => _allLists.where((element) => element.album=="Hindi").toList();
  List<MediaItem> get nepaliLists => _allLists.where((element) => element.album=="Nepali").toList();
}