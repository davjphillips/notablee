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
                   :owner_id  => 1,
                   :category => "Causes")

b2 = Badge.create!( :title => 'Stop SOPA', 
                 :description => 'SOPA is really bad. Let us all get together and put a 
                                stop to SOPA. This is really bad.  Lorem ipsum. We already
                                stopped SOPA, but we feel the need to represent this badge anyway.', 
                 :image_url => 'StopSopa.png',
                 :owner_id  => 1,
                 :category => "Causes")

b3 = Badge.create!(:title => 'JOBS Act', 
                   :description => 'Support the JOBS Act to allow businesses to raise money through 
                                    crowdfunding, publicly discuss that they are raising money and more', 
                   :image_url => 'jobsact.png',
                   :owner_id  => 1,
                   :category => "Causes")
                  
b4 = Badge.create!( :title => 'Dev Bootcamp', 
                   :description => 'An intensive bootcamp for passionate learners to learn web development in 10 weeks.', 
                   :image_url => 'devbootcamp.png',
                   :owner_id  => 1,
                   :category => "Organizations")
                   
b5 = Badge.create!( :title => 'Notablee', 
                  :description => 'Changing the world one picture at a time.', 
                  :image_url => 'notableeme.png',
                  :owner_id  => 1,
                  :category => "Organizations")

b6 = Badge.create!( :title => 'Umerica', 
                  :description => 'Land of the free and the home of the brave', 
                  :image_url => 'american.png',
                  :owner_id  => 1,
                  :category => "Countries")
                  
b7 = Badge.create!( :title => 'Syria', 
                 :description => '#SYRIA #SYRIA #SYRIA', 
                 :image_url => 'syria.png',
                 :owner_id  => 1,
                 :category => "Countries")
                 
b8 = Badge.create!( :title => 'Spain', 
                :description => '#SPAIN #SPAIN #SPAIN', 
                :image_url => 'spain.png',
                :owner_id  => 1,
                :category => "Countries")
                
b9 = Badge.create!( :title => 'India', 
                :description => '#INDIA #INDIA #INDIA', 
                :image_url => 'india.png',
                :owner_id  => 1,
                :category => "Countries")
                
b10 = Badge.create!( :title => 'Pakistan', 
                :description => '#PAKISTAN #PAKISTAN #PAKISTAN', 
                :image_url => 'pakistan.png',
                :owner_id  => 1,
                :category => "Countries")
                
b11 = Badge.create!( :title => 'China', 
                :description => '#CHINA #CHINA #CHINA', 
                :image_url => 'china.png',
                :owner_id  => 1,
                :category => "Countries")

b12 = Badge.create!( :title => 'USA', 
                :description => '#USA #USA #USA', 
                :image_url => 'USA.png',
                :owner_id  => 1,
                :category => "Countries")

                  
                  

puts "it worked!"                  
                  
                  