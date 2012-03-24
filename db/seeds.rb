# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' , name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)

Badge.create!(:title => 'KONY-2012', 
                   :description => 'This is guy is really bad. Let us all get together and put a 
                                  stop to this madness. This is really bad.  Lorem ipsum. That 
                                  is all the lorem ipsum stuff that I know.', 
                   :image_url => 'kony2012.png',
                   :owner_id  => 1,
                   :category => "Causes")

Badge.create!( :title => 'Stop-SOPA', 
                 :description => 'SOPA is really bad. Let us all get together and put a 
                                stop to SOPA. This is really bad.  Lorem ipsum. We already
                                stopped SOPA, but we feel the need to represent this badge anyway.', 
                 :image_url => 'StopSopa.png',
                 :owner_id  => 1,
                 :category => "Causes")

Badge.create!(:title => 'JOBS-Act', 
                   :description => 'Support the JOBS Act to allow businesses to raise money through 
                                    crowdfunding, publicly discuss that they are raising money and more', 
                   :image_url => 'jobsact.png',
                   :owner_id  => 1,
                   :category => "Causes")
                  
# Badge.create!( :title => 'Dev Bootcamp', 
#                    :description => 'An intensive bootcamp for passionate learners to learn web development in 10 weeks.', 
#                    :image_url => 'devbootcamp.png',
#                    :owner_id  => 1,
#                    :category => "Organizations")
                   
# Badge.create!( :title => 'Notablee', 
#                   :description => 'Changing the world one picture at a time.', 
#                   :image_url => 'notableeme.png',
#                   :owner_id  => 1,
#                   :category => "Organizations")
                  
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
                
Badge.create!( :title => 'Switzerland', 
                :description => '#SWITZERLAND #SWITZERLAND #SWITZERLAND', 
                :image_url => 'switzerland.png',
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
                
Badge.create!( :title => 'CollegeDesis', 
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

Badge.create!( :title => 'USAstars', 
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
              
Badge.create!( :title => 'England', 
              :description => '#', 
              :image_url => 'england.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'Ireland', 
              :description => '#', 
              :image_url => 'ireland.png',
              :owner_id  => 1,
              :category => "Countries")

Badge.create!( :title => 'Italy', 
              :description => '#', 
              :image_url => 'italy.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'Argentina', 
              :description => '#', 
              :image_url => 'argentina.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'Russia', 
              :description => '#', 
              :image_url => 'russia.png',
              :owner_id  => 1,
              :category => "Countries")
              
Badge.create!( :title => 'France', 
              :description => '#', 
              :image_url => 'france.png',
              :owner_id  => 1,
              :category => "Countries")             

Badge.create!( :title => 'Canada', 
              :description => '#CANADA #CANADA #CANADA', 
              :image_url => 'canada.png',
              :owner_id  => 1,
              :category => "Countries")

# Badge.create!( :title => 'RIP-Trayvon', 
#               :description => 'On the night of Feb.26th, Trayvon Martin, 17, was shot and killed by George Zimmerman, 28, in a suburban Orlando community.  
#                                The gunman has gone a month without being arrested, claiming self-defense.  There have been allegations of racism and an\
#                                investigation into how local police have handled the case.', 
#               :image_url => 'RIP-TM.png',
#               :owner_id  => 1,
#               :category => "Causes")

Badge.create!( :title => 'Trayvon-Martin', 
              :description => 'On the night of Feb.26th, Trayvon Martin, 17, was shot and killed by George Zimmerman, 28, in a suburban Orlando community.  
                               The gunman has gone a month without being arrested, claiming self-defense.  There have been allegations of racism and an\
                               investigation into how local police have handled the case.  Trayvon was wearing a hoodie at the time...inspiring the protest
                                for the "Million Hoodie March" in NYC demanding justice for the young Trayvon.', 
              :image_url => 'trayvon-hoodies-up.png',
              :owner_id  => 1,
              :category => "Causes")
              
Badge.create!( :title => 'Trayvon-Martin-Hoodies-Up', 
              :description => 'On the night of Feb.26th, Trayvon Martin, 17, was shot and killed by George Zimmerman, 28, in a suburban Orlando community.  
                             The gunman has gone a month without being arrested, claiming self-defense.  There have been allegations of racism and an\
                             investigation into how local police have handled the case.  Trayvon was wearing a hoodie at the time...inspiring the protest
                              for the "Million Hoodie March" in NYC demanding justice for the young Trayvon.', 
              :image_url => 'trayvon-hoodies-up.png',
              :owner_id  => 1,
              :category => "Causes")

              
Badge.create!( :title => 'Remember-TM', 
              :description => 'On the night of Feb.26th, Trayvon Martin, 17, was shot and killed by George Zimmerman, 28, in a suburban Orlando community.  
                               The gunman has gone a month without being arrested, claiming self-defense.  There have been allegations of racism and an\
                               investigation into how local police have handled the case.  Trayvon was wearing a hoodie at the time...inspiring the protest
                                for the "Million Hoodie March" in NYC demanding justice for the young Trayvon.', 
              :image_url => 'TMpic.png',
              :owner_id  => 1,
              :category => "Causes")
              
# Badge.create!( :title => 'Trayvon-Martin', 
#               :description => 'On the night of Feb.26th, Trayvon Martin, 17, was shot and killed by George Zimmerman, 28, in a suburban Orlando community.  
#                                The gunman has gone a month without being arrested, claiming self-defense.  There have been allegations of racism and an\
#                                investigation into how local police have handled the case.  Trayvon was wearing a hoodie at the time...inspiring the protest
#                                 for the "Million Hoodie March" in NYC demanding justice for the young Trayvon.', 
#               :image_url => 'RIPTM.png',
#               :owner_id  => 1,
#               :category => "Causes")               
# 
# 
# Badge.create!( :title => 'Hoodies-Up', 
#               :description => 'On the night of Feb.26th, Trayvon Martin, 17, was shot and killed by George Zimmerman, 28, in a suburban Orlando community.  
#                              The gunman has gone a month without being arrested, claiming self-defense.  There have been allegations of racism and an\
#                              investigation into how local police have handled the case. Trayvon was wearing a hoodie at the time...inspiring the protest
#                              for the "Million Hoodie March" in NYC demanding justice for the young Trayvon.', 
#               :image_url => 'hoodiesup.png',
#               :owner_id  => 1,
#               :category => "Causes")
                  
                  