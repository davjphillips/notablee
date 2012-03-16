# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' , name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)


b1 = Badge.create!(:title => 'KONY 2012', 
                   :description => 'This is guy is really bad. Let us all get together and put a 
                                  stop to this madness. This is really bad.  Lorem ipsum. That 
                                  is all the lorem ipsum stuff that I know.', 
                   :image_url => 'kony2012.png',
                   :owner_id  => 1)
                   
b2 = Badge.create!( :title => 'Stop SOPA', 
                  :description => 'SOPA is really bad. Let us all get together and put a 
                                 stop to SOPA. This is really bad.  Lorem ipsum. We already
                                 stopped SOPA, but we feel the need to represent this badge anyway.', 
                  :image_url => 'StopSopa.png',
                  :owner_id  => 1)
                  
b3 = Badge.create!( :title => 'KONY 2012 New Color', 
                   :description => 'Check this out.  We created another color to make this KONY fella more
                                  famous.  Help make him famous - create awareness and stomp his fac.
                                  This is guy is really bad. Let us all get together and put a 
                                  stop to this madness. This is really bad.  Lorem ipsum. That 
                                  is all the lorem ipsum stuff that I know.', 
                   :image_url => 'kony2012-2.png',
                   :owner_id  => 1)

b4 = Badge.create!( :title => 'Stop SOPA awesome', 
                  :description => 'SOPA is awesome. So is David.  Stop is not actually awesome...but then
                                  again, neither is David.  I suppose it is better than getting stuck
                                  working with Lachy. At least he is old enough to grab a beer.', 
                  :image_url => 'StopSopa-2.png',
                  :owner_id  => 1)
                  
                  

puts "it worked!"                  
                  
                  