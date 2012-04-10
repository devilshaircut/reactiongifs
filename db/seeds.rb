# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


seeds = [
  { :url => 'http://i.imgur.com/ZJLRj.gif', :description => 'A cat popping a balloon.',         :tags => ["cat", "balloon", "startled"] },
  { :url => 'http://i.imgur.com/kVVoE.gif', :description => 'A cat suddenly falls asleep.',     :tags => ["cat", "sleep", "narcoleptic", "bored"] },
  { :url => 'http://i.imgur.com/5tKcK.gif', :description => 'A wrestler looks left to right.',  :tags => ["wrestler", "troll"] },
  { :url => 'http://i.imgur.com/m199U.gif', :description => 'A bunny asleep at computer.',      :tags => ["bunny", "sleep", "bored", "work"] },
  { :url => 'http://i.imgur.com/x48u4.gif', :description => 'Stephen Colbert dancing crazy.',   :tags => ["stephen", "colbert", "excited", "dancing"] },
  { :url => 'http://i.imgur.com/P0SCW.gif', :description => 'Price is Right contestant.',       :tags => ["price is right", "contestant", "shocked"] },
  { :url => 'http://i.imgur.com/Q3KLc.gif', :description => 'Sleeping puppies all wake up.',    :tags => ["puppies", "sleep"] },
  { :url => 'http://i.imgur.com/WMx8F.gif', :description => 'Guy gets scared at computer.',     :tags => ["startled", "fight"] },
  { :url => 'http://i.imgur.com/VT2hj.gif', :description => 'A delerious boxer screams.',       :tags => ["boxer", "excited"] },
  { :url => 'http://i.imgur.com/7Rbp1.gif', :description => 'Bert looks up from a book.',       :tags => ["bert", "sesame", "street", "book", "reading"] },
  { :url => 'http://i.imgur.com/aIaFk.gif', :description => 'One Piece Luffy sees a zombie.',   :tags => ["one piece", "luffy", "zombie", "bored"] },
  { :url => 'http://i.imgur.com/cINKi.gif', :description => 'Guy fights off many attackers.',   :tags => ["fight", "attack"] },
  { :url => 'http://i.imgur.com/1UTK8.gif', :description => 'Obama skateboards onto stage.',    :tags => ["obama", "skateboard"] },
  { :url => 'http://i.imgur.com/8zXCq.gif', :description => 'Neil deGrasse Typson waving.',     :tags => ["neil", "degrasse", "tyson", "waving"] },
  { :url => 'http://i.imgur.com/hpN8Z.gif', :description => 'Two people acrobatic dancing.',    :tags => ["dancing", "like a boss"] },
  { :url => 'http://i.imgur.com/QorW2.gif', :description => 'Crazy moose blocking a road.',     :tags => ["moose", "blocking", "road", "startled"] },
  { :url => 'http://i.imgur.com/O2pBe.gif', :description => 'Troy and Abed agree on something.', :tags => ["agreeing", "good point", "troy", "abed", "community"] },
  { :url => 'http://i.imgur.com/5JZLQ.gif', :description => 'Cookie Monster tapping his fingers.', :tags => ["cookie monster", "waiting", "tapping fingers"] },
  { :url => 'http://i.imgur.com/AEVLX.gif', :description => 'Jurassic Park look at this', :tags => ["jurassic park", "amazed", "look", "turn head", "disbelief", "agape", "surprised"] },
  { :url => 'http://i.imgur.com/h3e9m.gif', :description => 'American Psycho raincoat dance', :tags => ["american psycho", "raincoat", "dancing", "patrick bateman", "christian bale", "celebrity"] },
  { :url => 'http://i.imgur.com/iQT2S.gif', :description => 'Christian Bale looks surprised', :tags => ["christian bale", "celebrity", "beard", "surprised", "skeptical", "eyebrows"] },
  { :url => 'http://i.imgur.com/QTYhe.gif', :description => 'Jesse Eisenberg shrugs', :tags => ["jesse eisenberg", "shrugs", "the social network", "mark zuckerberg"] },
  { :url => 'http://i.imgur.com/aZEYt.gif', :description => 'Michael Cera walks away looking down', :tags => ["michael cera", "looking down", "sad", "george michael bluth", "walking away"] },
  { :url => 'http://i.imgur.com/pS9tX.gif', :description => 'Abed gives a thumbs up', :tags => ["abed", "community", "thumbs up", "danny pudi"] },
  { :url => 'http://i.imgur.com/lplcF.gif', :description => 'The Joker clapping', :tags => ["joker", "heath ledger", "clapping"] },
  { :url => 'http://i.imgur.com/WZgAG.gif', :description => 'Two dudes totally surprised', :tags => ["agape", "surprised", "outrageous"] },
  { :url => 'http://i.imgur.com/cDZ1x.gif', :description => 'Jon Stewart crumples his notes', :tags => ["jon stewart", "crumples paper", "frustrated", "angry" ] },
  { :url => 'http://i.imgur.com/UAb1D.gif', :description => 'Kuzco crying in the rain', :tags => ["kuzco", "crying", "rain", "emperor's new groove"] },
  { :url => 'http://i.imgur.com/R2qFh.gif', :description => 'The Situation is surpprised', :tags => ["the situation", "jersey shore", "surprised", "outrageous"] },
  { :url => 'http://i.imgur.com/Oi9yA.gif', :description => 'James McAvoy sweaty and fanning himself', :tags => ["james mcavoy", "celebrity", "wanted", "wesley gibson", "sweaty", "fanning", "nervous", "tired"] },
  { :url => 'http://i.imgur.com/bC4pR.gif', :description => 'Girl upset and saying "Oh my God"', :tags => ["girl", "upset", "oh my god", "omg", "dismayed", "disappointed"] },
  { :url => 'http://i.imgur.com/HDKMH.gif', :description => 'Buttercup eye twitching', :tags => ["buttercup", "powerpuff girls", "eye twitch", "shock"] },
  { :url => 'http://i.imgur.com/ENNTx.gif', :description => 'Rarity eye twitching', :tags => ["rarity", "my little pony", "eye twitch", "shock"] },
  { :url => 'http://i.imgur.com/M5K0t.gif', :description => 'Creepy guy stares', :tags => ["creepy", "staring"] },
  { :url => 'http://i.imgur.com/jzXs2.gif', :description => 'Jake Gyllenhaal disagrees', :tags => ["jake gyllenhaal", "celebrity", "disagrees", "head shake", "no", "nope"] },
  { :url => 'http://i.imgur.com/v54uu.gif', :description => 'Dis gon b gud', :tags => ["dis gon b gud", "chair", "unfolding", "this is going to be good"] },
  { :url => 'http://i.imgur.com/s89hw.gif', :description => 'Zoom in and smile', :tags => ["zoom", "smile", "boondock saints", "creepy"] },
  { :url => 'http://i.imgur.com/YebS6.gif', :description => 'Push all the buttons', :tags => ["panic", "push buttons", "red alert", "crater face", "astronaut"] },
  { :url => 'http://i.imgur.com/6scqR.gif', :description => 'Emma Watson troll face', :tags => ["emma watson", "celebrity", "troll face", "smile", "fake smile"] },
  { :url => 'http://i.imgur.com/7PSiL.gif', :description => 'Grandpa Simpson walks in and out', :tags => ["simpsons", "grandpa simpson", "hat", "coatrack", "walk in and out"] },
  { :url => 'http://i.imgur.com/yKSx3.gif', :description => 'Mike Tyson as Herman Cain smiles', :tags => ["mike tyson", "herman cain", "smiles", "creepy"] },
  { :url => 'http://i.imgur.com/1V4iS.gif', :description => 'Hugh Jackman in awe', :tags => ["hugh jackman", "the fountain", "awe", "amazed"] },
  { :url => 'http://i.imgur.com/BkECN.gif', :description => 'Moriarty shakes head no', :tags => ["moriarty", "sherlock", "no", "nope", "shakes head"] },
  { :url => 'http://i.imgur.com/Ncq8b.gif', :description => 'Jennifer Lawrence smirks and nods', :tags => ["jennifer lawrence", "celebrity", "nod", "smirk", "lip purse", "yep"] },
  { :url => 'http://i.imgur.com/poU25.gif', :description => 'Asian facepalm', :tags => ["facepalm"] },
  { :url => 'http://i.imgur.com/T7smA.gif', :description => 'Lost Boys from Hook dance', :tags => ["dancing", "hook", "lost boys"] },
  { :url => 'http://i.imgur.com/YBBOH.gif', :description => 'Jean-Claude Van Damme dances awkwardly', :tags => ["jean-claude van damme", "dancing", "awkward", "80s"] },
  { :url => 'http://i.imgur.com/tGere.gif', :description => 'What are you doing?', :tags => ["what are you doing"] },
  { :url => 'http://i.imgur.com/P79tv.gif', :description => 'Seinfeld throws up hands and leaves', :tags => ["seinfeld", "i'm done", "throw up hands", "leaves"] },
  { :url => 'http://i.imgur.com/IXfKT.gif', :description => 'Troy as Michael Jackson dancing', :tags => ["troy", "community", "dancing", "michael jackson"] },
  { :url => 'http://i.imgur.com/EpRYQ.gif', :description => 'Red Shirt head explodes', :tags => ["star trek", "head explodes", "red shirt", "pain"] },
  { :url => 'http://i.imgur.com/o59Ax.gif', :description => 'Lutz winking', :tags => ["lutz", "30 rock", "wink"] },
  { :url => 'http://i.imgur.com/93Czg.gif', :description => 'Really excited kid', :tags => ["kid", "boy", "excited", "screaming"] },
  { :url => 'http://i.imgur.com/8VCvc.gif', :description => 'Batman coversation over', :tags => ["batman", "conversation over", "dome", "silence", "done talking", "earmuffs"] },
  { :url => 'http://i.imgur.com/tPi6r.gif', :description => 'Buster Bluth haters gonna hate', :tags => ["buster bluth", "arrested development", "haters gonna hate", "dancing"] },
  { :url => 'http://i.imgur.com/TBkpO.gif', :description => 'C3PO madness', :tags => ["c3po", "star wars", "madness"] },
  { :url => 'http://i.imgur.com/oOMBn.gif', :description => 'Old Spice guy nods', :tags => ["old spice", "issaiah mustapha", "nodding", "yes", "smile"] },
  { :url => 'http://i.imgur.com/uQV1J.gif', :description => 'Joaquin Phoenix surprised', :tags => ["joaquin phoenix", "signs", "merrill hess", "surprised", "disgusted"] },
  { :url => 'http://i.imgur.com/sdBmP.gif', :description => 'Kobe woah, holds up a score of 1', :tags => ["kobe", "kobe bryant", "woah", "score", "1"] },
  { :url => 'http://i.imgur.com/vVPBi.gif', :description => 'Kobe woah, holds up a score of 2', :tags => ["kobe", "kobe bryant", "woah", "score", "2"] },
  { :url => 'http://i.imgur.com/noIgJ.gif', :description => 'Kobe woah, holds up a score of 3', :tags => ["kobe", "kobe bryant", "woah", "score", "3"] },
  { :url => 'http://i.imgur.com/VbKMU.gif', :description => 'Kobe woah, holds up a score of 4', :tags => ["kobe", "kobe bryant", "woah", "score", "4"] },
  { :url => 'http://i.imgur.com/XFKfG.gif', :description => 'Kobe woah, holds up a score of 5', :tags => ["kobe", "kobe bryant", "woah", "score", "5"] },
  { :url => 'http://i.imgur.com/FHNpA.gif', :description => 'Kobe woah, holds up a score of 6', :tags => ["kobe", "kobe bryant", "woah", "score", "6"] },
  { :url => 'http://i.imgur.com/xTXqE.gif', :description => 'Kobe woah, holds up a score of 7', :tags => ["kobe", "kobe bryant", "woah", "score", "7"] },
  { :url => 'http://i.imgur.com/WdJJH.gif', :description => 'Kobe woah, holds up a score of 8', :tags => ["kobe", "kobe bryant", "woah", "score", "8"] },
  { :url => 'http://i.imgur.com/Do67i.gif', :description => 'Kobe woah, holds up a score of 9', :tags => ["kobe", "kobe bryant", "woah", "score", "9"] },
  { :url => 'http://i.imgur.com/d8VIf.gif', :description => 'Kobe woah, holds up a score of 10', :tags => ["kobe", "kobe bryant", "woah", "score", "10"] },
  { :url => 'http://i.imgur.com/7epHI.gif', :description => 'Idris Elba does the sex hand signal', :tags => ["idris elba", "luther", "sex hand sign"] },
  { :url => 'http://i.imgur.com/RBrCH.gif', :description => 'Moss throws his monitor', :tags => ["moss", "it crowd", "throw", "monitor", "computer"] },
  { :url => 'http://i.imgur.com/DUq14.gif', :description => 'Jenna Marbles, Can I get pregnant from this?', :tags => ["jenna marbles", "pregnant"] },
  { :url => 'http://i.imgur.com/dhWlo.gif', :description => 'Ace Ventura inspects the camera', :tags => ["ace ventura", "jim carey", "inspection", "curious", "nosey"] },
  { :url => 'http://i.imgur.com/bDF1D.gif', :description => 'Happy Pooh waits for food', :tags => ["pooh", "winney the pooh", "happy", "waiting", "food"] },
  { :url => 'http://i.imgur.com/V0XEg.gif', :description => 'Fuck everything', :tags => ["fuck", "everything", "office", "messy", "throw papers"] },
  { :url => 'http://i.imgur.com/P9z49.gif', :description => 'Kyp celebrates', :tags => ["kyp", "napoleon dynamite", "yes", "celebrate"] },
  { :url => 'http://i.imgur.com/QZAuQ.gif', :description => 'Liz Lemon high-fives herself', :tags => ["liz lemon", "30 rock", "tina fey", "high-five", "high-5", "self"] },
  { :url => 'http://i.imgur.com/gQmJt.gif', :description => 'David Tennant as Ash Ketchum', :tags => ["david tennant", "doctor who", "pokemon", "ash ketchum", "celebrate", "victory", "win", "excited"] },
  { :url => 'http://i.imgur.com/j5Lcm.gif', :description => 'Richard Castle looks surprised', :tags => ["richard castle", "nathan fillion", "celebrity", "surprised", "agape", "stunned"] },
  { :url => 'http://i.imgur.com/yaDnA.gif', :description => 'Jim Carey slams door and collapses', :tags => ["jim carey", "dumb and dumber", "celebrity", "door slam", "agony", "collapse", "upset", "anguish"] },
  { :url => 'http://i.imgur.com/Dc2tf.gif', :description => 'Charlie pounds his chest', :tags => ["charlie", "always sunny in philadelphia", "chest pounding"] },
  { :url => 'http://i.imgur.com/PZC3a.gif', :description => 'Clint Eastwood looks angry', :tags => ["clint eastwood", "gran torino", "angry", "furious", "upset", "disgruntled", "grizzled"] }
]

seeds.each do |hash|
  
  image = Image.find_or_create_by_url( hash.slice("url", "description") )
  hash["tags"].each do |tag|
    image.tags << Tag.find_or_create_by_keyword( tag )
  end
  
end









