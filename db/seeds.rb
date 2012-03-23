# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' , name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)

Badge.create!(:title => 'KONY 2012', 
                   :description => 'This is guy is really bad. Let us all get together and put a 
                                  stop to this madness. This is really bad.  Lorem ipsum. That 
                                  is all the lorem ipsum stuff that I know.', 
                   :image_url => 'kony2012.png',
                   :owner_id  => 1,
                   :category => "Causes")

Badge.create!( :title => 'Stop SOPA', 
                 :description => 'SOPA is really bad. Let us all get together and put a 
                                stop to SOPA. This is really bad.  Lorem ipsum. We already
                                stopped SOPA, but we feel the need to represent this badge anyway.', 
                 :image_url => 'StopSopa.png',
                 :owner_id  => 1,
                 :category => "Causes")

Badge.create!(:title => 'JOBS Act', 
                   :description => 'Support the JOBS Act to allow businesses to raise money through 
                                    crowdfunding, publicly discuss that they are raising money and more', 
                   :image_url => 'jobsact.png',
                   :owner_id  => 1,
                   :category => "Causes")
                  
Badge.create!( :title => 'Dev Bootcamp', 
                   :description => 'An intensive bootcamp for passionate learners to learn web development in 10 weeks.', 
                   :image_url => 'devbootcamp.png',
                   :owner_id  => 1,
                   :category => "Organizations")
                   
Badge.create!( :title => 'Notablee', 
                  :description => 'Changing the world one picture at a time.', 
                  :image_url => 'notableeme.png',
                  :owner_id  => 1,
                  :category => "Organizations")
                  
Badge.create!( :title => 'Syria', 
                 :description => '#SYRIA #SYRIA #SYRIA', 
                 :image_url => 'syria.png',
                 :owner_id  => 1,
                 :category => "Countries")
                 
Badge.create!( :title => 'Spain', 
                :description => '#SPAIN #SPAIN #SPAIN', 
                :image_url => 'spain.png',
                :owner_id  => 1,
                :category => "Countries")
                
Badge.create!( :title => 'India', 
                :description => '#INDIA #INDIA #INDIA', 
                :image_url => 'india.png',
                :owner_id  => 1,
                :category => "Countries")
                
Badge.create!( :title => 'Pakistan', 
                :description => '#PAKISTAN #PAKISTAN #PAKISTAN', 
                :image_url => 'pakistan.png',
                :owner_id  => 1,
                :category => "Countries")
                
Badge.create!( :title => 'China', 
                :description => '#CHINA #CHINA #CHINA', 
                :image_url => 'china.png',
                :owner_id  => 1,
                :category => "Countries")

Badge.create!( :title => 'USA', 
                :description => '#USA #USA #USA', 
                :image_url => 'USA.png',
                :owner_id  => 1,
                :category => "Countries")

Badge.create!( :title => 'Roadtrippers', 
                :description => '#ROADTRIPPERS #ROADTRIPPERS #ROADTRIPPERS', 
                :image_url => 'roadtrippers.png',
                :owner_id  => 1,
                :category => "Organizations")
                
Badge.create!( :title => 'College Desis', 
                :description => '#COLLEGE DESIS #COLLEGE DESIS #COLLEGE DESIS', 
                :image_url => 'collegedesis.png',
                :owner_id  => 1,
                :category => "Organizations")
                
Badge.create!( :title => 'Leap', 
                :description => '#LEAP #LEAP #LEAP', 
                :image_url => 'leap.png',
                :owner_id  => 1,
                :category => "Organizations")
                  
Badge.create!( :title => 'Choremonster', 
                :description => '#CHOREMONSTER #CHOREMONSTER #CHOREMONSTER', 
                :image_url => 'choremonster.png',
                :owner_id  => 1,
                :category => "Organizations")
                
Badge.create!( :title => 'Keepio', 
                :description => '#KEEPIO #KEEPIO #KEEPIO', 
                :image_url => 'keepio.png',
                :owner_id  => 1,
                :category => "Organizations")
                
Badge.create!( :title => 'Germany', 
                :description => '#GERMANY #GERMANY #GERMANY', 
                :image_url => 'germany.png',
                :owner_id  => 1,
                :category => "Countries")
                
Badge.create!( :title => 'Mexico', 
              :description => '#MEXICO #MEXICO #MEXICO', 
              :image_url => 'mexico.png',
              :owner_id  => 1,
              :category => "Countries")

Badge.create!( :title => 'USA Stars', 
              :description => '#USA #USA #USA', 
              :image_url => 'USA2.png',
              :owner_id  => 1,
              :category => "Countries")
              

Badge.create!( :title => 'Bangladesh', 
              :description => '#BANGLADESH #BANGLADESH #BANGLADESH', 
              :image_url => 'bangladesh.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'Brazil', 
              :description => '#BRAZIL #BRAZIL #BRAZIL', 
              :image_url => 'brazil.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'Japan', 
              :description => '#JAPAN #JAPAN #JAPAN', 
              :image_url => 'japan.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'Netherlands', 
              :description => '#NETHERLANDS #NETHERLANDS #NETHERLANDS', 
              :image_url => 'netherlands.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'Indonesia', 
              :description => '#INDONESIA #INDONESIA #INDONESIA', 
              :image_url => 'indonesia.png',
              :owner_id  => 1,
              :category => "Countries")
                  

puts "it worked!"                  
                  
                  