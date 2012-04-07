# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seeds = [
  { 'url' => 'http://i.imgur.com/ZJLRj.gif', 'description' => 'A cat popping a balloon.',         'tags' => ["cat", "balloon", "startled"] },
  { 'url' => 'http://i.imgur.com/kVVoE.gif', 'description' => 'A cat suddenly falls asleep.',     'tags' => ["cat", "sleep", "narcoleptic", "bored"] },
  { 'url' => 'http://i.imgur.com/5tKcK.gif', 'description' => 'A wrestler looks left to right.',  'tags' => ["wrestler", "troll"] },
  { 'url' => 'http://i.imgur.com/m199U.gif', 'description' => 'A bunny asleep at computer.',      'tags' => ["bunny", "sleep", "bored", "work"] },
  { 'url' => 'http://i.imgur.com/x48u4.gif', 'description' => 'Stephen Colbert dancing crazy.',   'tags' => ["stephen", "colbert", "excited", "dancing"] },
  { 'url' => 'http://i.imgur.com/P0SCW.gif', 'description' => 'Price is Right contestant.',       'tags' => ["price is right", "contestant", "shocked"] },
  { 'url' => 'http://i.imgur.com/Q3KLc.gif', 'description' => 'Sleeping puppies all wake up.',    'tags' => ["puppies", "sleep"] },
  { 'url' => 'http://i.imgur.com/WMx8F.gif', 'description' => 'Guy gets scared at computer.',     'tags' => ["startled", "fight"] },
  { 'url' => 'http://i.imgur.com/VT2hj.gif', 'description' => 'A delerious boxer screams.',       'tags' => ["boxer", "excited"] },
  { 'url' => 'http://i.imgur.com/7Rbp1.gif', 'description' => 'Bert looks up from a book.',       'tags' => ["bert", "sesame", "street", "book", "reading"] },
  { 'url' => 'http://i.imgur.com/aIaFk.gif', 'description' => 'One Piece Luffy sees a zombie.',   'tags' => ["one piece", "luffy", "zombie", "bored"] },
  { 'url' => 'http://i.imgur.com/cINKi.gif', 'description' => 'Guy fights off many attackers.',   'tags' => ["fight", "attack"] },
  { 'url' => 'http://i.imgur.com/1UTK8.gif', 'description' => 'Obama skateboards onto stage.',    'tags' => ["obama", "skateboard"] },
  { 'url' => 'http://i.imgur.com/8zXCq.gif', 'description' => 'Neil deGrasse Typson waving.',     'tags' => ["neil", "degrasse", "tyson", "waving"] },
  { 'url' => 'http://i.imgur.com/hpN8Z.gif', 'description' => 'Two people acrobatic dancing.',    'tags' => ["dancing", "like a boss"] },
  { 'url' => 'http://i.imgur.com/QorW2.gif', 'description' => 'Crazy moose blocking a road.',     'tags' => ["moose", "blocking", "road", "startled"] }
]

seeds.each do |hash|
  
  image = Image.new
  image.url = hash["url"]
  image.description = hash["description"]
  image.save
  hash["tags"].each do |tag|
    Image.find_by_url(hash["url"]).tags << Tag.find_or_create_by_keyword(tag)
  end
  
end









